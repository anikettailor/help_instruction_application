import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const HelpInstructionApp());
}

/// Root widget for the Help Instruction Application.
class HelpInstructionApp extends StatelessWidget {
  const HelpInstructionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Help Center',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
