import 'package:flutter/material.dart';
import '../services/theme_service.dart';
import '../l10n/app_localizations.dart';

class DarkModeSwitch extends StatelessWidget {
  const DarkModeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = ThemeService();
    final l10n = AppLocalizations.of(context)!;

    return ListenableBuilder(
      listenable: themeService,
      builder: (context, child) {
        final isDarkMode = themeService.isDarkMode;

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Text with icons above
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.light_mode,
                  color: isDarkMode ? Colors.grey[600] : Colors.orange,
                  size: 14,
                ),
                const SizedBox(width: 4),
                Text(
                  '${l10n.lightMode} / ${l10n.darkMode}',
                  style: TextStyle(
                    color: isDarkMode ? Colors.grey[400] : Colors.black87,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.dark_mode,
                  color: isDarkMode ? Colors.blue[300] : Colors.grey[600],
                  size: 14,
                ),
              ],
            ),
            const SizedBox(height: 4),
            // Half-height rocker switch below
            GestureDetector(
              onTap: () => themeService.toggleDarkMode(),
              child: Container(
                width: 60,
                height: 22,
                decoration: BoxDecoration(
                  color: isDarkMode
                      ? Colors.black87
                      : Colors.grey[300],
                  borderRadius: BorderRadius.circular(11),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // Rocker knob
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      left: isDarkMode ? 32 : 2,
                      top: 2,
                      bottom: 2,
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          color: isDarkMode ? Colors.blueGrey[800] : Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
