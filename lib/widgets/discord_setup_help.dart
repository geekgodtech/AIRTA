import 'package:flutter/material.dart';
import 'package:airta/l10n/app_localizations.dart';

class DiscordSetupHelp extends StatelessWidget {
  const DiscordSetupHelp({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.discord, color: Color(0xFF5865F2), size: 32),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      l10n.discordSetupTitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                l10n.discordSetupDescription,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              _StepNumber(
                number: 1,
                title: l10n.discordStep1Title,
                description: l10n.discordStep1Description,
              ),
              const SizedBox(height: 16),
              _StepNumber(
                number: 2,
                title: l10n.discordStep2Title,
                description: l10n.discordStep2Description,
              ),
              const SizedBox(height: 16),
              _StepNumber(
                number: 3,
                title: l10n.discordStep3Title,
                description: l10n.discordStep3Description,
              ),
              const SizedBox(height: 16),
              _StepNumber(
                number: 4,
                title: l10n.discordStep4Title,
                description: l10n.discordStep4Description,
              ),
              const SizedBox(height: 16),
              _StepNumber(
                number: 5,
                title: l10n.discordStep5Title,
                description: l10n.discordStep5Description,
              ),
              const SizedBox(height: 24),
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

  const _StepNumber({
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '$number',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
