import 'package:flutter/material.dart';

/// TrashTheme interface to define a common method to
/// define the theme.
/// TODO: later this class will contains also the logic to change
/// from dart to lite, for the moment this is left to the end user
abstract class TrashTheme {
  ThemeData makeDarkTheme({required BuildContext context});
  ThemeData makeTheme({required BuildContext context});
}
