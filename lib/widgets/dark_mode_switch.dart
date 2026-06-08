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

        return GestureDetector(
          onTap: () => themeService.toggleDarkMode(),
          child: Container(
            width: 100,
            height: 44,
            decoration: BoxDecoration(
              color: isDarkMode
                  ? Colors.black87
                  : Colors.grey[300],
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Stack(
              children: [
                // Light mode label
                Positioned(
                  left: 12,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.light_mode,
                          color: isDarkMode ? Colors.grey[600] : Colors.orange,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          l10n.lightMode,
                          style: TextStyle(
                            color: isDarkMode ? Colors.grey[600] : Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Dark mode label
                Positioned(
                  right: 12,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          l10n.darkMode,
                          style: TextStyle(
                            color: isDarkMode ? Colors.blue[300] : Colors.grey[600],
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          Icons.dark_mode,
                          color: isDarkMode ? Colors.blue[300] : Colors.grey[600],
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                // Rocker knob
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  left: isDarkMode ? 56 : 4,
                  top: 4,
                  bottom: 4,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: isDarkMode ? Colors.blueGrey[800] : Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
