import 'package:flutter/material.dart';
import 'package:airta/l10n/app_localizations.dart';

class DiscordSetupHelp extends StatelessWidget {
  const DiscordSetupHelp({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        child: Padding(
          padding: EdgeInsets.all(isSmallScreen ? 16 : 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.discord, color: const Color(0xFF5865F2), size: isSmallScreen ? 24 : 32),
                  SizedBox(width: isSmallScreen ? 8 : 12),
                  Expanded(
                    child: Text(
                      l10n.discordSetupTitle,
                      style: isSmallScreen
                          ? Theme.of(context).textTheme.titleLarge
                          : Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              SizedBox(height: isSmallScreen ? 12 : 16),
              Text(
                l10n.discordSetupDescription,
                style: isSmallScreen
                    ? Theme.of(context).textTheme.bodySmall
                    : Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: isSmallScreen ? 16 : 24),
              _StepNumber(
                number: 1,
                title: l10n.discordStep1Title,
                description: l10n.discordStep1Description,
                isSmallScreen: isSmallScreen,
              ),
              SizedBox(height: isSmallScreen ? 12 : 16),
              _StepNumber(
                number: 2,
                title: l10n.discordStep2Title,
                description: l10n.discordStep2Description,
                isSmallScreen: isSmallScreen,
              ),
              SizedBox(height: isSmallScreen ? 12 : 16),
              _StepNumber(
                number: 3,
                title: l10n.discordStep3Title,
                description: l10n.discordStep3Description,
                isSmallScreen: isSmallScreen,
              ),
              SizedBox(height: isSmallScreen ? 12 : 16),
              _StepNumber(
                number: 4,
                title: l10n.discordStep4Title,
                description: l10n.discordStep4Description,
                isSmallScreen: isSmallScreen,
              ),
              SizedBox(height: isSmallScreen ? 12 : 16),
              _StepNumber(
                number: 5,
                title: l10n.discordStep5Title,
                description: l10n.discordStep5Description,
                isSmallScreen: isSmallScreen,
              ),
              SizedBox(height: isSmallScreen ? 16 : 24),
              Center(
                child: FilledButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(l10n.gotIt),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StepNumber extends StatelessWidget {
  final int number;
  final String title;
  final String description;
  final bool isSmallScreen;

  const _StepNumber({
    required this.number,
    required this.title,
    required this.description,
    this.isSmallScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: isSmallScreen ? 24 : 32,
          height: isSmallScreen ? 24 : 32,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '$number',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: isSmallScreen ? 12 : 16,
              ),
            ),
          ),
        ),
        SizedBox(width: isSmallScreen ? 12 : 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: isSmallScreen
                    ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      )
                    : Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
              ),
              SizedBox(height: isSmallScreen ? 2 : 4),
              Text(
                description,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                  fontSize: isSmallScreen ? 11 : null,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
