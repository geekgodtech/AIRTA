import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:airta/controllers/toxicity_analyzer_controller.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/services/android_sms_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SmsConversationPicker extends StatefulWidget {
  final ToxicityAnalyzerController controller;

  const SmsConversationPicker({super.key, required this.controller});

  @override
  State<SmsConversationPicker> createState() => _SmsConversationPickerState();
}

class _SmsConversationPickerState extends State<SmsConversationPicker> {
  final AndroidSmsService _smsService = AndroidSmsService();
  List<ConversationPartner>? _conversations;
  bool _isLoading = false;
  bool _hasPermission = false;
  String? _errorMessage;
  String _searchQuery = '';
  String _sortOption = 'recent'; // 'recent', 'name', 'count'
  bool _sortAscending = false; // Track sort direction
  bool _showOnlyNamed = false; // Filter to show only threads with contact names
  bool _enableMessageCountFilter = false; // Enable message count filter
  double _minMessageCount = 0; // Minimum message count filter
  String _loadingMessage = 'Loading conversations...';
  Timer? _loadingTimer;
  bool _isSelectingConversation = false;
  String _selectingConversationName = '';

  AppLocalizations get l10n => AppLocalizations.of(context)!;

  @override
  void initState() {
    super.initState();
    try {
      _checkPermissionAndLoad();
    } catch (e) {
      setState(() {
        _errorMessage = 'Failed to initialize. Please restart the app.';
      });
    }
  }

  @override
  void dispose() {
    _loadingTimer?.cancel();
    super.dispose();
  }

  void _startLoadingTimer() {
    _loadingTimer?.cancel();
    _loadingMessage = 'Loading conversations...';
    int elapsedSeconds = 0;
    
    _loadingTimer = Timer.periodic(const Duration(seconds: 30), (timer) {
      elapsedSeconds += 30;
      
      if (elapsedSeconds == 120) {
        // 2-minute mark
        setState(() {
          _loadingMessage = 'Please be patient. Message threads with over 50,000 messages could take up to 4 minutes.';
        });
        // After 5 seconds, change back to loading message
        Future.delayed(const Duration(seconds: 5), () {
          if (mounted && _isLoading) {
            setState(() {
              _loadingMessage = 'Loading conversations...';
            });
          }
        });
      } else if (elapsedSeconds == 210) {
        // 3-minute 30-second mark
        setState(() {
          _loadingMessage = 'Please be patient. Message threads with over 50,000 messages could take up to 4 minutes.';
        });
        // After 5 seconds, change back to loading message
        Future.delayed(const Duration(seconds: 5), () {
          if (mounted && _isLoading) {
            setState(() {
              _loadingMessage = 'Loading conversations...';
            });
          }
        });
      } else {
        // Other 30-second intervals
        setState(() {
          _loadingMessage = 'Please be patient, we\'re still loading...';
        });
        // After 5 seconds, change back to loading message
        Future.delayed(const Duration(seconds: 5), () {
          if (mounted && _isLoading) {
            setState(() {
              _loadingMessage = 'Loading conversations...';
            });
          }
        });
      }
    });
  }

  void _stopLoadingTimer() {
    _loadingTimer?.cancel();
    _loadingTimer = null;
  }

  Future<void> _checkPermissionAndLoad() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    _startLoadingTimer();

    try {
      final hasPermission = await _smsService.hasSmsPermission();
      setState(() => _hasPermission = hasPermission);

      if (hasPermission) {
        await _showLargeThreadWarning();
        await _loadConversations();
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Error checking permissions. Please try again.';
      });
    } finally {
      _stopLoadingTimer();
      setState(() => _isLoading = false);
    }
  }

  static bool _warningShownThisSession = false;
  static const String _prefKey = 'large_thread_warning_suppressed';

  Future<void> _showLargeThreadWarning() async {
    if (!mounted || _warningShownThisSession) return;
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool(_prefKey) == true) return;
    _warningShownThisSession = true;
    if (!mounted) return;
    bool neverShow = false;
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: Text(AppLocalizations.of(context)!.largeThreadNoticeTitle),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context)!.largeThreadNoticeBody),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => setDialogState(() => neverShow = !neverShow),
                child: Row(
                  children: [
                    Checkbox(
                      value: neverShow,
                      onChanged: (val) => setDialogState(() => neverShow = val ?? false),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(AppLocalizations.of(context)!.neverShowThisAgain),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                if (neverShow) {
                  await prefs.setBool(_prefKey, true);
                }
                if (context.mounted) Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _requestPermission() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    _startLoadingTimer();

    try {
      final granted = await _smsService.requestSmsPermission();
      setState(() => _hasPermission = granted);

      if (granted) {
        await _showLargeThreadWarning();
        await _loadConversations();
      } else {
        setState(() {
          _errorMessage = 'SMS permission is required to read conversations';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Error requesting permission: $e';
      });
    } finally {
      _stopLoadingTimer();
      setState(() => _isLoading = false);
    }
  }

  Future<void> _loadConversations() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    _startLoadingTimer();

    try {
      final conversations = _searchQuery.isEmpty
          ? await _smsService.fetchAllConversations()
          : await _smsService.searchConversations(_searchQuery);

      // Filter conversations based on "Named only" checkbox and message count filter
      final filteredConversations = conversations.where((partner) {
        // Apply "Named only" filter
        if (_showOnlyNamed) {
          // Only show threads with contact names (has letters)
          if (!RegExp(r'[a-zA-Z]').hasMatch(partner.displayName)) {
            return false;
          }
        } else {
          // Show threads with contact names or 9-10 digit phone numbers
          if (!_isValidConversation(partner.displayName)) {
            return false;
          }
        }
        
        // Apply message count filter if enabled
        if (_enableMessageCountFilter) {
          return partner.messageCount >= _minMessageCount;
        }
        
        return true;
      }).toList();
      
      // Merge threads with same contact name - keep only the one with most messages
      final mergedConversations = <ConversationPartner>[];
      final nameToThreads = <String, List<ConversationPartner>>{};
      
      for (final partner in filteredConversations) {
        final name = partner.displayName;
        if (!nameToThreads.containsKey(name)) {
          nameToThreads[name] = [];
        }
        nameToThreads[name]!.add(partner);
      }
      
      // For each contact name, keep only the thread with the most messages
      for (final threads in nameToThreads.values) {
        if (threads.length == 1) {
          mergedConversations.add(threads.first);
        } else {
          // Sort by message count descending and take the first
          threads.sort((a, b) => b.messageCount.compareTo(a.messageCount));
          mergedConversations.add(threads.first);
        }
      }
      
      setState(() {
        _conversations = _sortConversations(mergedConversations);
      });
    } catch (e) {
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) {
            final l10n = AppLocalizations.of(context)!;
            return AlertDialog(
              title: Text(l10n.errorLoadingConversations),
              content: Text(l10n.unableToLoadConversationsBody),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(l10n.ok),
                ),
              ],
            );
          },
        );
      }
      setState(() {
        _errorMessage = AppLocalizations.of(context)!.errorLoadingConversationsBody;
      });
    } finally {
      _stopLoadingTimer();
      setState(() => _isLoading = false);
    }
  }

  bool _isValidConversation(String displayName) {
    // Check if it has letters (contact name)
    final hasLetters = RegExp(r'[a-zA-Z]').hasMatch(displayName);
    if (hasLetters) return true;
    
    // Check if it's exactly 9 or 10 digits (phone number)
    final digitsOnly = displayName.replaceAll(RegExp(r'[^0-9]'), '');
    return digitsOnly.length == 9 || digitsOnly.length == 10;
  }

  List<ConversationPartner> _sortConversations(List<ConversationPartner> conversations) {
    switch (_sortOption) {
      case 'name':
        conversations.sort((a, b) => _sortAscending 
          ? a.displayName.toLowerCase().compareTo(b.displayName.toLowerCase())
          : b.displayName.toLowerCase().compareTo(a.displayName.toLowerCase()));
        break;
      case 'count':
        conversations.sort((a, b) => _sortAscending 
          ? a.messageCount.compareTo(b.messageCount)
          : b.messageCount.compareTo(a.messageCount));
        break;
      case 'recent':
      default:
        conversations.sort((a, b) => _sortAscending 
          ? a.lastMessageDate.compareTo(b.lastMessageDate)
          : b.lastMessageDate.compareTo(a.lastMessageDate));
        break;
    }
    return conversations;
  }

  Icon _getSortIcon(String option) {
    if (option != _sortOption) {
      // Not selected, show default icon
      switch (option) {
        case 'recent':
          return const Icon(Icons.access_time, size: 16);
        case 'name':
          return const Icon(Icons.person, size: 16);
        case 'count':
          return const Icon(Icons.message, size: 16);
        default:
          return const Icon(Icons.access_time, size: 16);
      }
    }
    // Selected, show sort direction arrow
    return Icon(_sortAscending ? Icons.arrow_upward : Icons.arrow_downward, size: 16);
  }

  void _applySort(String newSortOption) {
    if (newSortOption == _sortOption) {
      setState(() {
        _sortAscending = !_sortAscending;
        _conversations = _sortConversations(_conversations!);
      });
    } else {
      setState(() {
        _sortOption = newSortOption;
        _sortAscending = false;
        _conversations = _sortConversations(_conversations!);
      });
    }
  }

  Future<void> _selectConversation(ConversationPartner partner) async {
    try {
      final controller = widget.controller;

      setState(() {
        _isSelectingConversation = true;
        _selectingConversationName = partner.displayName;
        _errorMessage = null;
      });

      // Fetch the full conversation thread
      final thread = await _smsService.fetchConversationThread(partner.id);

      // Load it into the controller using the proper method
      controller.loadSmsThread(thread);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.conversationLoaded(thread.messages.length, partner.displayName)),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.of(context).pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.errorLoadingConversations),
            backgroundColor: Colors.red,
          ),
        );
      }
      setState(() {
        _errorMessage = AppLocalizations.of(context)!.errorLoadingConversations;
      });
    } finally {
      setState(() => _isSelectingConversation = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 400;
            return Text(
              AppLocalizations.of(context)!.selectSmsConversation,
              style: TextStyle(
                fontSize: isNarrow ? 18 : 20,
                height: 1.0,
                letterSpacing: isNarrow ? -0.5 : 0,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            );
          },
        ),
        backgroundColor: colorScheme.inversePrimary,
      ),
      body: Stack(
        children: [
        Column(
        children: [
          // Search bar and filters
          if (_hasPermission && _conversations != null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Search bar
                  TextField(
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)!.searchConversations,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: _searchQuery.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                setState(() => _searchQuery = '');
                                _loadConversations();
                              },
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() => _searchQuery = value);
                    },
                    onSubmitted: (_) => _loadConversations(),
                  ),
                  const SizedBox(height: 16),
                  // Filters section
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.filter_list, size: 20),
                              const SizedBox(width: 8),
                              Text(
                                l10n.filters,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          // Sort options
                          LayoutBuilder(
                            builder: (context, constraints) {
                              final isNarrow = constraints.maxWidth < 400;
                              
                              if (isNarrow) {
                                // Narrow screens: put "Sort by" on separate line above buttons
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.sort, size: 20),
                                        const SizedBox(width: 4),
                                        Text(l10n.sortBy, style: const TextStyle(fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          // Recent sort button
                                          _SortButton(
                                            value: 'recent',
                                            label: l10n.recent,
                                            isSelected: _sortOption == 'recent',
                                            isAscending: _sortAscending,
                                            onTap: () => _applySort('recent'),
                                          ),
                                          const SizedBox(width: 8),
                                          // Name sort button
                                          _SortButton(
                                            value: 'name',
                                            label: l10n.name,
                                            isSelected: _sortOption == 'name',
                                            isAscending: _sortAscending,
                                            onTap: () => _applySort('name'),
                                          ),
                                          const SizedBox(width: 8),
                                          // Count sort button
                                          _SortButton(
                                            value: 'count',
                                            label: l10n.count,
                                            isSelected: _sortOption == 'count',
                                            isAscending: _sortAscending,
                                            onTap: () => _applySort('count'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              } else {
                                // Wide screens: use Wrap for flexible layout
                                return Wrap(
                                  spacing: 8,
                                  runSpacing: 8,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    const Icon(Icons.sort, size: 20),
                                    Text(l10n.sortBy, style: const TextStyle(fontWeight: FontWeight.bold)),
                                    // Recent sort button
                                    _SortButton(
                                      value: 'recent',
                                      label: l10n.recent,
                                      isSelected: _sortOption == 'recent',
                                      isAscending: _sortAscending,
                                      onTap: () => _applySort('recent'),
                                    ),
                                    // Name sort button
                                    _SortButton(
                                      value: 'name',
                                      label: l10n.name,
                                      isSelected: _sortOption == 'name',
                                      isAscending: _sortAscending,
                                      onTap: () => _applySort('name'),
                                    ),
                                    // Count sort button
                                    _SortButton(
                                      value: 'count',
                                      label: l10n.count,
                                      isSelected: _sortOption == 'count',
                                      isAscending: _sortAscending,
                                      onTap: () => _applySort('count'),
                                    ),
                                  ],
                                );
                              }
                            },
                          ),
                          const SizedBox(height: 12),
                          // Filter checkboxes
                          LayoutBuilder(
                            builder: (context, constraints) {
                              final isNarrow = constraints.maxWidth < 400;
                              
                              if (isNarrow) {
                                // Narrow screens: stack checkboxes vertically
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Checkbox to filter threads without contact names
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Checkbox(
                                          value: _showOnlyNamed,
                                          onChanged: (value) {
                                            setState(() {
                                              _showOnlyNamed = value ?? false;
                                            });
                                            _loadConversations();
                                          },
                                        ),
                                        Text(l10n.namedOnly, style: const TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                    // Message count filter
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Checkbox(
                                          value: _enableMessageCountFilter,
                                          onChanged: (value) {
                                            setState(() {
                                              _enableMessageCountFilter = value ?? false;
                                            });
                                            _loadConversations();
                                          },
                                        ),
                                        Text(l10n.minMessages, style: const TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                  ],
                                );
                              } else {
                                // Wide screens: use Wrap for flexible layout
                                return Wrap(
                                  spacing: 16,
                                  runSpacing: 8,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    // Checkbox to filter threads without contact names
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Checkbox(
                                          value: _showOnlyNamed,
                                          onChanged: (value) {
                                            setState(() {
                                              _showOnlyNamed = value ?? false;
                                            });
                                            _loadConversations();
                                          },
                                        ),
                                        Text(l10n.namedOnly, style: const TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                    // Message count filter
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Checkbox(
                                          value: _enableMessageCountFilter,
                                          onChanged: (value) {
                                            setState(() {
                                              _enableMessageCountFilter = value ?? false;
                                            });
                                            _loadConversations();
                                          },
                                        ),
                                        Text(l10n.minMessages, style: const TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                  ],
                                );
                              }
                            },
                          ),
                          // Message count slider (shown when filter is enabled)
                          if (_enableMessageCountFilter)
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${l10n.minimumMessages} ${_minMessageCount.toInt()}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  Slider(
                                    value: _minMessageCount,
                                    min: 0,
                                    max: 5000,
                                    divisions: 100,
                                    onChanged: (value) {
                                      setState(() {
                                        _minMessageCount = value;
                                      });
                                      // Debounce the reload to avoid excessive calls
                                      Future.delayed(const Duration(milliseconds: 300), () {
                                        if (mounted) {
                                          _loadConversations();
                                        }
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          // Error message
          if (_errorMessage != null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                color: colorScheme.errorContainer,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.error, color: colorScheme.error),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _errorMessage!,
                          style: TextStyle(color: colorScheme.onErrorContainer),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          // Main content
          Expanded(child: _buildContent(colorScheme)),
        ],
        ),
        // Jet-black overlay while a thread is loading
        if (_isSelectingConversation)
          Positioned.fill(
            child: Container(
              color: Colors.black,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircularProgressIndicator(
                      color: Colors.red,
                      strokeWidth: 4,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      AppLocalizations.of(context)!.loadingConversationWith(_selectingConversationName),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(ColorScheme colorScheme) {
    if (_isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(_loadingMessage),
          ],
        ),
      );
    }

    if (!_hasPermission) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.sms_outlined, size: 80, color: colorScheme.primary),
              const SizedBox(height: 24),
              Text(
                l10n.smsPermissionRequired,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.smsPermissionRequiredBody,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: _requestPermission,
                icon: const Icon(Icons.security),
                label: Text(l10n.grantSmsPermission),
                style: FilledButton.styleFrom(minimumSize: const Size(200, 48)),
              ),
            ],
          ),
        ),
      );
    }

    if (_conversations == null || _conversations!.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.chat_bubble_outline,
                size: 80,
                color: colorScheme.primary.withOpacity(0.5),
              ),
              const SizedBox(height: 24),
              Text(
                _searchQuery.isEmpty
                    ? l10n.noSmsConversationsFound
                    : l10n.noConversationsMatchSearch,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              Text(
                _searchQuery.isEmpty
                    ? l10n.noSmsMessagesOnDevice
                    : l10n.tryDifferentSearch,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              if (_searchQuery.isNotEmpty) ...[
                const SizedBox(height: 24),
                OutlinedButton(
                  onPressed: () {
                    setState(() => _searchQuery = '');
                    _loadConversations();
                  },
                  child: Text(l10n.clearSearch),
                ),
              ],
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _conversations!.length,
      itemBuilder: (context, index) {
        final conversation = _conversations![index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: colorScheme.primaryContainer,
              child: Icon(Icons.person, color: colorScheme.onPrimaryContainer),
            ),
            title: Text(
              conversation.displayName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${conversation.messageCount} messages',
              style: TextStyle(
                color: colorScheme.onSurface.withOpacity(0.7),
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => _selectConversation(conversation),
          ),
        );
      },
    );
  }
}

class _SortButton extends StatelessWidget {
  final String value;
  final String label;
  final bool isSelected;
  final bool isAscending;
  final VoidCallback onTap;

  const _SortButton({
    required this.value,
    required this.label,
    required this.isSelected,
    required this.isAscending,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? colorScheme.primaryContainer : colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? colorScheme.primary : colorScheme.outline,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                color: isSelected ? colorScheme.onPrimaryContainer : colorScheme.onSurface,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            if (isSelected) ...[
              const SizedBox(width: 4),
              Icon(
                isAscending ? Icons.arrow_upward : Icons.arrow_downward,
                size: 16,
                color: colorScheme.onPrimaryContainer,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
