import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:airta/services/referral_service.dart';

/// Full-screen referral page with contact picker, SMS intent, and progress tracker.
class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  final ReferralService _referralService = ReferralService();
  List<Contact> _contacts = [];
  bool _loadingContacts = false;
  bool _hasContactPermission = false;

  @override
  void initState() {
    super.initState();
    _referralService.addListener(_onServiceUpdate);
    _requestContactsPermission();
  }

  @override
  void dispose() {
    _referralService.removeListener(_onServiceUpdate);
    super.dispose();
  }

  void _onServiceUpdate() {
    if (mounted) setState(() {});
  }

  Future<void> _requestContactsPermission() async {
    final status = await Permission.contacts.request();
    setState(() {
      _hasContactPermission = status.isGranted;
    });
    if (status.isGranted) {
      await _loadContacts();
    }
  }

  Future<void> _loadContacts() async {
    setState(() => _loadingContacts = true);
    try {
      final contacts = await FlutterContacts.getContacts(
        withProperties: true,
        withPhoto: false,
      );
      // Filter to contacts with phone numbers
      setState(() {
        _contacts = contacts
            .where((c) => c.phones.isNotEmpty)
            .toList()
          ..sort((a, b) => a.displayName.compareTo(b.displayName));
        _loadingContacts = false;
      });
    } catch (e) {
      debugPrint('Error loading contacts: $e');
      setState(() => _loadingContacts = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0d0d1a),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1a1a3e),
        title: const Text('Refer Friends',
            style: TextStyle(color: Color(0xFFd0d0ff), fontSize: 18)),
        iconTheme: const IconThemeData(color: Color(0xFFa0a0c0)),
      ),
      body: Column(
        children: [
          // Progress section
          _buildProgressSection(),
          // Trial banner if active
          if (_referralService.isTrialActive) _buildTrialBanner(),
          // Reward earned banner
          if (_referralService.hasEarnedReward && !_referralService.trialActivated)
            _buildRewardBanner(),
          // Contact list
          Expanded(child: _buildContactSection()),
        ],
      ),
    );
  }

  Widget _buildProgressSection() {
    final credits = _referralService.creditCount;
    final required = ReferralService.requiredCredits;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1a1a3e), Color(0xFF0d0d1a)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Text(
            'Refer 5 friends. Get a FREE month!',
            style: const TextStyle(
              color: Color(0xFFd0d0ff),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            'Each friend must download AIRTA and run their first report.',
            style: TextStyle(color: const Color(0xFF8888aa), fontSize: 12),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          // Progress dots
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(required, (i) {
              final filled = i < credits;
              return Container(
                width: 36,
                height: 36,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: filled
                      ? const Color(0xFF40cc40)
                      : const Color(0xFF1a1a3a),
                  border: Border.all(
                    color: filled
                        ? const Color(0xFF60ff60)
                        : const Color(0xFF2a2a5a),
                    width: 2,
                  ),
                ),
                child: Center(
                  child: filled
                      ? const Icon(Icons.check, color: Colors.white, size: 18)
                      : Text(
                          '${i + 1}',
                          style: const TextStyle(
                              color: Color(0xFF6666aa), fontSize: 13),
                        ),
                ),
              );
            }),
          ),
          const SizedBox(height: 10),
          Text(
            '$credits / $required referral credits earned',
            style: const TextStyle(color: Color(0xFFa0a0c0), fontSize: 13),
          ),
          // Show cycle counter and total referrals
          if (_referralService.cyclesCompleted > 0 || _referralService.totalReferralsAllTime > 0)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  if (_referralService.cyclesCompleted > 0)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFc080ff).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFc080ff).withOpacity(0.4)),
                      ),
                      child: Text(
                        '${_referralService.cyclesCompleted} ${ _referralService.cyclesCompleted == 1 ? 'reward claimed' : 'rewards claimed'}',
                        style: const TextStyle(
                          color: Color(0xFFc080ff),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  if (_referralService.totalReferralsAllTime > 0)
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        '${_referralService.totalReferralsAllTime + _referralService.creditCount} total referrals',
                        style: const TextStyle(color: Color(0xFF8888aa), fontSize: 11),
                      ),
                    ),
                ],
              ),
            ),
          if (_referralService.pendingNumbers.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                '${_referralService.pendingNumbers.length} pending (waiting for them to run a report)',
                style: const TextStyle(color: Color(0xFF6666aa), fontSize: 11),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTrialBanner() {
    final days = _referralService.trialDaysRemaining;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: const Color(0xFF1a3a1a),
      child: Row(
        children: [
          const Icon(Icons.star, color: Color(0xFF60ff60), size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'Standard Trial Active — $days days remaining',
              style: const TextStyle(
                  color: Color(0xFF60ff60), fontSize: 13, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRewardBanner() {
    final cycles = _referralService.cyclesCompleted;
    final isRepeat = cycles > 0;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1a3a1a), Color(0xFF0d2a0d)],
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF40cc40)),
      ),
      child: Column(
        children: [
          if (isRepeat)
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: const Color(0xFFc080ff).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFFc080ff)),
              ),
              child: Text(
                'Cycle ${cycles + 1} Complete!',
                style: const TextStyle(
                  color: Color(0xFFc080ff),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          Text(
            isRepeat
                ? 'You\'ve earned another FREE month!'
                : 'You\'ve earned a FREE month of Standard!',
            style: const TextStyle(
              color: Color(0xFF60ff60),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            isRepeat
                ? 'You\'ve completed ${cycles + 1} referral cycles. Claim your reward and start earning again!'
                : 'You successfully referred 5 friends who ran their first report.',
            style: const TextStyle(color: Color(0xFFa0ffa0), fontSize: 12),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _activateFreeTrial,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF40cc40),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: Text(
                  isRepeat ? 'Claim Reward & Continue' : 'Start Free Month',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactSection() {
    if (!_hasContactPermission) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.contacts, color: Color(0xFF4a4a6a), size: 48),
              const SizedBox(height: 12),
              const Text(
                'Contact permission is needed to select friends to refer.',
                style: TextStyle(color: Color(0xFF8888aa), fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _requestContactsPermission,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4040cc),
                ),
                child: const Text('Grant Permission'),
              ),
            ],
          ),
        ),
      );
    }

    if (_loadingContacts) {
      return const Center(
        child: CircularProgressIndicator(color: Color(0xFF6060ff)),
      );
    }

    if (_contacts.isEmpty) {
      return const Center(
        child: Text(
          'No contacts with phone numbers found.',
          style: TextStyle(color: Color(0xFF6666aa), fontSize: 14),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: Text(
            'Select a friend to refer (${_contacts.length} contacts)',
            style: const TextStyle(
                color: Color(0xFFa0a0c0), fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _contacts.length,
            itemBuilder: (context, index) {
              final contact = _contacts[index];
              final phone = contact.phones.first.number;
              final normalized = ReferralService.normalizePhoneNumber(phone);
              final isPending = _referralService.pendingNumbers.contains(normalized);
              final isCredited = _referralService.creditedNumbers.contains(normalized);

              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: isCredited
                      ? const Color(0xFF2a5a2a)
                      : isPending
                          ? const Color(0xFF3a3a1a)
                          : const Color(0xFF1a1a3a),
                  child: Icon(
                    isCredited
                        ? Icons.check_circle
                        : isPending
                            ? Icons.hourglass_top
                            : Icons.person,
                    color: isCredited
                        ? const Color(0xFF60ff60)
                        : isPending
                            ? const Color(0xFFc0c040)
                            : const Color(0xFF6666aa),
                    size: 22,
                  ),
                ),
                title: Text(
                  contact.displayName,
                  style: const TextStyle(color: Color(0xFFd0d0ff), fontSize: 14),
                ),
                subtitle: Text(
                  phone,
                  style: const TextStyle(color: Color(0xFF6666aa), fontSize: 12),
                ),
                trailing: isCredited
                    ? const Text('Credited',
                        style: TextStyle(color: Color(0xFF60ff60), fontSize: 11))
                    : isPending
                        ? const Text('Pending',
                            style: TextStyle(color: Color(0xFFc0c040), fontSize: 11))
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.sms,
                                    color: Color(0xFF6060ff), size: 20),
                                tooltip: 'Send via SMS',
                                onPressed: () => _sendReferral(contact),
                              ),
                              IconButton(
                                icon: const Icon(Icons.copy,
                                    color: Color(0xFF4a4a6a), size: 18),
                                tooltip: 'Copy message',
                                onPressed: () => _copyMessage(contact),
                              ),
                            ],
                          ),
              );
            },
          ),
        ),
      ],
    );
  }

  Future<void> _sendReferral(Contact contact) async {
    final phone = contact.phones.first.number;
    final message = ReferralService.getReferralMessage(contact.displayName);

    // Store the number as pending referral BEFORE launching SMS
    await _referralService.addPendingReferral(phone);

    // Launch SMS intent with pre-populated message
    final uri = Uri(
      scheme: 'sms',
      path: phone,
      queryParameters: {'body': message},
    );

    try {
      await launchUrl(uri);
    } catch (e) {
      debugPrint('Failed to launch SMS intent: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Could not open messaging app. Message copied to clipboard.'),
            backgroundColor: const Color(0xFF3a3a1a),
          ),
        );
        await Clipboard.setData(ClipboardData(text: message));
      }
    }

    setState(() {});
  }

  Future<void> _copyMessage(Contact contact) async {
    final message = ReferralService.getReferralMessage(contact.displayName);
    await Clipboard.setData(ClipboardData(text: message));

    // Also store as pending since they intend to send manually
    final phone = contact.phones.first.number;
    await _referralService.addPendingReferral(phone);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Referral message copied! Send it to your friend.'),
          backgroundColor: Color(0xFF2a2a5a),
        ),
      );
    }
    setState(() {});
  }

  Future<void> _activateFreeTrial() async {
    await _referralService.activateRewardTrial();

    // Reset the counter for the next cycle after claiming
    await _referralService.resetForNextCycle();

    if (mounted) {
      final cycles = _referralService.cyclesCompleted;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            cycles == 1
                ? 'Free Standard month activated! You can now earn 5 more referrals for another reward.'
                : 'Free Standard month activated! Cycle $cycles complete. Earn 5 more for another reward!',
          ),
          backgroundColor: const Color(0xFF2a5a2a),
        ),
      );
      setState(() {});
    }
  }
}
