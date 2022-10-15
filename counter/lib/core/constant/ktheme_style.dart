import 'package:flutter/material.dart';

class KThemeStyle with ChangeNotifier {
  final kAppBar = const AppBarTheme(
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
  );
  final kBodyText1 = const TextStyle(
    color: Colors.white,
    fontSize: 20.0,
  );
  final kBodyText2 = const TextStyle(
    color: Colors.white,
    fontSize: 100.0,
  );
  final kColorScheme = ColorScheme.fromSwatch().copyWith(
    secondary: Colors.deepOrange, // Your accent color
  );
}
