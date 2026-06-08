import 'package:flutter/material.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/widgets/analyzer_workspace.dart';
import 'package:airta/widgets/language_selector.dart';
import 'package:airta/widgets/dark_mode_switch.dart';

class ToxicityAnalyzerMasterView extends StatelessWidget {
  const ToxicityAnalyzerMasterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 400;
            return Text(
              AppLocalizations.of(context)!.appTitle,
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
        actions: const [
          DarkModeSwitch(),
          SizedBox(width: 8),
          LanguageSelector(),
          SizedBox(width: 8),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const AnalyzerWorkspace(),
    );
  }
}
