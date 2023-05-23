import 'package:flutter/material.dart';
import 'package:trash_themes/themes/trash_theme.dart';

/// Dracula Theme that implement a dracula palette
/// defined in the following https://material-theme.com/docs/reference/color-palette/#material-themes
///
/// In addition this theme define only the dark theme, and the lite theme
/// it is just a redirection call to the dark one.
///
/// author: https://github.com/vincenzopalazzo
class DraculaTheme extends TrashTheme {
  @override
  ThemeData makeDarkTheme({required BuildContext context}) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color.fromARGB(255, 40, 42, 54),
      cardColor: const Color.fromARGB(255, 40, 42, 54),
      dialogBackgroundColor: const Color.fromARGB(255, 40, 42, 54),
      disabledColor: const Color.fromARGB(255, 98, 114, 164),
      canvasColor: const Color.fromARGB(255, 40, 42, 54),
      unselectedWidgetColor: const Color.fromARGB(255, 98, 114, 164),
      colorScheme: const ColorScheme.dark(
        background: Color.fromARGB(255, 40, 42, 54),
        onPrimary: Color.fromARGB(255, 40, 42, 54),
        primary: Color.fromARGB(255, 255, 121, 197),
        secondary: Color.fromARGB(255, 40, 42, 54),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 98, 114, 164))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 121, 197))),
        labelStyle: TextStyle(color: Color.fromARGB(255, 98, 114, 164)),
        prefixStyle: TextStyle(color: Color.fromARGB(255, 98, 114, 164)),
        suffixStyle: TextStyle(color: Color.fromARGB(255, 98, 114, 164)),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(),
        bodyMedium: TextStyle(),
        headlineSmall: TextStyle(fontWeight: FontWeight.bold),
        bodySmall: TextStyle(fontStyle: FontStyle.normal, fontSize: 13),
      ).apply(
        bodyColor: const Color.fromARGB(255, 98, 114, 164),
        decorationColor: const Color.fromARGB(255, 98, 114, 164),
      ),
      iconTheme: Theme.of(context).iconTheme.copyWith(
            color: const Color.fromARGB(255, 98, 114, 164),
          ),
      appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 40, 42, 54),
      ),
      //visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  @override
  ThemeData makeTheme({required BuildContext context}) {
    return makeDarkTheme(context: context);
  }
}
