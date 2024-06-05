import 'package:flutter/material.dart';

class AppTheme{

  static bool isDark = true;
  static Color lightPrimary = Color(0xffB7935F);
  static Color darkPrimary = Color(0xff141A2E);
  static Color darkSecondary = Color(0xffFACC1D);




  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xffB7935F),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 50,
      ),
      unselectedIconTheme: IconThemeData(
        size: 40,
      ),
    ) ,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold

        ),
        color: Colors.transparent
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: lightPrimary,
      primary: lightPrimary,
      secondary: Color(0xffB7935F).withOpacity(0.57),
      onPrimary: Color(0xffF9F8F8),
      onSecondary: Color(0xff242424),
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white
    ),
    dividerColor: lightPrimary ,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.black
      ),
          labelMedium: TextStyle(
        color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25
    ),
      bodyMedium: TextStyle(
          fontSize: 20 ,
          fontWeight: FontWeight.w400,
          color: Colors.black
      ),
      labelSmall: TextStyle(
          fontSize: 15,
          color: Colors.black
      ),
      labelLarge: TextStyle(
        color: lightPrimary,
        fontSize: 20
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
    ),
    useMaterial3: true,
  );








  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141A2E),
      selectedItemColor: darkSecondary,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 50,
      ),
      unselectedIconTheme: IconThemeData(
        size: 40,
      ),
    ) ,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold

        ),
        color: Colors.transparent
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: darkSecondary,
      primary: darkPrimary,
      secondary: darkSecondary,
      onPrimary: Color(0xffF9F8F8),
      onSecondary: Color(0xff242424),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimary
    ),
    dividerColor: darkSecondary ,
    textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white
        ),
        labelMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25
    ),
      bodyMedium: TextStyle(
        fontSize: 20 ,
        fontWeight: FontWeight.w400,
        color: darkSecondary
      ),
      labelSmall: TextStyle(
        fontSize: 15,
        color: Colors.white
      ),
      labelLarge: TextStyle(
          color: darkSecondary,
          fontSize: 20
      ),
    ),
    cardTheme: CardTheme(
      color: darkPrimary,
      surfaceTintColor: Colors.transparent,
    ),
    useMaterial3: true,
  );
}