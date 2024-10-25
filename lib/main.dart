import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mail_app/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    
    return MaterialApp(
      title: 'Mail App',
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.openSans(textStyle: textTheme.bodyMedium),
        ),
        primarySwatch: Colors.blue,
        // Add any other light theme customizations here
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.openSans(textStyle: textTheme.bodyMedium),
        ),
        primarySwatch: Colors.blueGrey,
        // Add any other dark theme customizations here
      ),
      themeMode: ThemeMode.system, // This will use the system's theme setting
      home: const SplashScreen(),
    );
  }
}
