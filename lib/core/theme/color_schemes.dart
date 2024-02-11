import 'package:flutter/material.dart';

/// Defines the app-wide theme data.
///
/// This class is responsible for creating and providing a custom [ThemeData]
/// that is used throughout the app to maintain a consistent look and feel.
/// The theme is based on a minimalist design approach with a defined color
/// scheme that includes primary, secondary, and background colors, among others.
/// Currently it follows black-grey-white palette.

class AppTheme {
  static ThemeData get miniTheme {
    // Define the colors
    Color primaryColor = const Color(0xFF5A5A5A);
    Color secondaryColor = const Color(0xFF7E7E7E);
    Color backgroundColor = const Color(0xFFFFFCF4);
    Color surfaceColor = const Color(0xFFFAFAFA);
    Color onPrimaryColor = Colors.white;
    Color onSecondaryColor = Colors.white;
    Color onBackgroundColor = const Color(0xFF333333);
    Color onSurfaceColor = const Color(0xFF333333);
    Color errorColor = const Color(0xFFE57373);

    // Configure the color scheme with the defined colors
    ColorScheme colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      primaryContainer: primaryColor,
      secondary: secondaryColor,
      secondaryContainer: secondaryColor,
      background: backgroundColor,
      surface: surfaceColor,
      onBackground: onBackgroundColor,
      onSurface: onSurfaceColor,
      onError: Colors.white,
      onPrimary: onPrimaryColor,
      onSecondary: onSecondaryColor,
      error: errorColor,
    );

    ThemeData themeData = ThemeData.from(colorScheme: colorScheme).copyWith(
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: primaryColor,
      ),
      highlightColor: primaryColor,
    );

    // Customize the default text theme to use the 'Lato' font family
    TextTheme defaultTextTheme = ThemeData.light().textTheme;
    TextTheme customTextTheme = defaultTextTheme.apply(
      fontFamily: 'Lato',
    );

    // Update themeData with customTextTheme
    themeData = themeData.copyWith(
      textTheme: customTextTheme,
    );

    return themeData;
  }
}
