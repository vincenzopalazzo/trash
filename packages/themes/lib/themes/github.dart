import 'package:flutter/material.dart';
import 'package:trash_themes/themes/trash_theme.dart';

/// Github Theme that implement a dracula palette
/// defined in the following https://material-theme.com/docs/reference/color-palette/#material-themes
///
/// author: https://github.com/vincenzopalazzo
class GithubTheme extends TrashTheme {
  @override
  ThemeData makeDarkTheme({required BuildContext context}) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color.fromARGB(255, 209, 154, 102),
      backgroundColor: const Color.fromARGB(255, 40, 44, 52),
      primaryTextTheme: const TextTheme(
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
        headline5: TextStyle(fontWeight: FontWeight.bold),
        caption: TextStyle(fontStyle: FontStyle.normal, fontSize: 13),
      ).apply(
        bodyColor: const Color.fromARGB(255, 151, 159, 173),
        decorationColor: const Color.fromARGB(255, 151, 159, 173),
      ),
      cardColor: const Color.fromARGB(255, 47, 51, 61),
      selectedRowColor: const Color.fromARGB(255, 72, 79, 114),
      dialogBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
      disabledColor: const Color.fromARGB(255, 98, 114, 164),
      canvasColor: const Color.fromARGB(255, 40, 42, 54),
      toggleableActiveColor: const Color.fromARGB(255, 255, 121, 197),
      unselectedWidgetColor: const Color.fromARGB(255, 98, 114, 164),
      colorScheme: const ColorScheme.dark(
        background: Color.fromARGB(255, 40, 44, 52),
        onPrimary: Color.fromARGB(255, 209, 154, 102),
        primary: Color.fromARGB(255, 209, 154, 102),
        secondary: Color.fromARGB(255, 40, 42, 54),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 98, 114, 164))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 121, 197))),
        labelStyle: TextStyle(color: Color.fromARGB(255, 151, 159, 173)),
        prefixStyle: TextStyle(color: Color.fromARGB(255, 151, 159, 173)),
        suffixStyle: TextStyle(color: Color.fromARGB(255, 151, 159, 173)),
      ),
      textTheme: const TextTheme(
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
        headline5: TextStyle(fontWeight: FontWeight.bold),
        caption: TextStyle(fontStyle: FontStyle.normal, fontSize: 13),
      ).apply(
        bodyColor: const Color.fromARGB(255, 151, 159, 173),
        decorationColor: const Color.fromARGB(255, 151, 159, 173),
      ),
      iconTheme: Theme.of(context).iconTheme.copyWith(
            color: const Color.fromARGB(255, 151, 159, 173),
          ),
      appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 40, 44, 52),
      ),
      //visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  @override
  ThemeData makeTheme({required BuildContext context}) {
    return makeDarkTheme(context: context);
  }
}
