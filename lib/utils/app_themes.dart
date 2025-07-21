
import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    // primarySwatch: Colors.deepOrange,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.white,
    // appBarTheme: const AppBarTheme(
    //   backgroundColor: Colors.deepOrange,
    //   elevation: 0,
    //   centerTitle: true,
    //   titleTextStyle: TextStyle(
    //     fontSize: 20,
    //     fontWeight: FontWeight.bold,
    //     color: Colors.white,
    //   ),
    //   iconTheme: IconThemeData(color: Colors.white),
    // ),
    // textTheme: const TextTheme(
    //   displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    //   headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    //   bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
    //   bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: Colors.deepOrange,
    //     foregroundColor: Colors.white,
    //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    //   ),
    // ),
    // inputDecorationTheme: InputDecorationTheme(
    //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: BorderSide(color: Colors.deepOrange, width: 2),
    //   ),
    //   labelStyle: TextStyle(color: Colors.deepOrange),
    // ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Color(0xFF121212),
    // primarySwatch: Colors.deepOrange,
    // appBarTheme: const AppBarTheme(
    //   backgroundColor: Colors.black,
    //   elevation: 0,
    //   centerTitle: true,
    //   titleTextStyle: TextStyle(
    //     fontSize: 20,
    //     fontWeight: FontWeight.bold,
    //     color: Colors.white,
    //   ),
    //   iconTheme: IconThemeData(color: Colors.white),
    // ),
    // textTheme: const TextTheme(
    //   displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    //   headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white70),
    //   bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
    //   bodyMedium: TextStyle(fontSize: 14, color: Colors.white70),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: Colors.deepOrange,
    //     foregroundColor: Colors.white,
    //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    //   ),
    // ),
    // inputDecorationTheme: InputDecorationTheme(
    //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: BorderSide(color: Colors.deepOrange, width: 2),
    //   ),
    //   labelStyle: TextStyle(color: Colors.deepOrangeAccent),
    // ),
  );
}
