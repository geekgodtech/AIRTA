import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:airta/services/language_service.dart';
import 'package:airta/l10n/app_localizations.dart';

/// Language selector dropdown with flag and language code
class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        final currentLanguage = languageService.currentLanguage;
        final l10n = AppLocalizations.of(context)!;
        final mq = MediaQuery.of(context);
        final isNarrow = mq.size.width < 400;

        return PopupMenuButton<String>(
          tooltip: l10n.selectLanguageTooltip,
          offset: const Offset(0, 40),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: isNarrow ? 4 : 8, vertical: 4),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  currentLanguage.flagEmoji,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  currentLanguage.code.toUpperCase(),
                  style: TextStyle(
                    fontSize: isNarrow ? 9 : 10,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
          itemBuilder: (context) {
            return LanguageService.supportedLanguages.map((language) {
              final isSelected = language.code == currentLanguage.code;
              return PopupMenuItem<String>(
                value: language.code,
                child: Row(
                  children: [
                    Text(
                      language.flagEmoji,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            language.nativeName,
                            style: TextStyle(
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                          Text(
                            language.name,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (isSelected)
                      const Icon(Icons.check, color: Colors.green),
                  ],
                ),
              );
            }).toList();
          },
          onSelected: (languageCode) {
            languageService.setLanguage(languageCode);
          },
        );
      },
    );
  }
}
