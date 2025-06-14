import 'package:flutter/material.dart';
import 'package:pdfixel/config/theme.dart';
import 'package:pdfixel/presentation/home/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDFixel',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: HomeScreen(),
    );
  }
}