import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:airta/services/language_service.dart';

/// Language selector dropdown with flag and language code
class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        final currentLanguage = languageService.currentLanguage;

        return PopupMenuButton<String>(
          tooltip: 'Select Language',
          offset: const Offset(0, 40),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.white.withOpacity(0.3),
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
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
