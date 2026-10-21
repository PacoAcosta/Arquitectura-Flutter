import 'package:flutter/material.dart';

import 'theme/app_theme.dart';
import 'features/view/theme_lab_page.dart';

void main() {
  runApp(const ThemeLabApp());
}

// Esta clase solo puede ser cambiada por el desarrollador. No cambia al apretar algo de la UI
class ThemeLabApp extends StatelessWidget {
  const ThemeLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ThemeLab',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppTheme.primaryColor),
        scaffoldBackgroundColor: AppTheme.backgroundColor,
        fontFamily: AppTheme.fontFamily,
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: AppTheme.textColor,
          displayColor: AppTheme.textColor,
        ),
      ),
      // Esto significa que es la pantalla principal, por eso dice "home" es ThemeLabPage()
      home: const ThemeLabPage(),
    );
  }
}
