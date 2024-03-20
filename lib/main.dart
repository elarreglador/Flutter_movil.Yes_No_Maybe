import 'package:flutter/material.dart';
import 'package:ud5_yes_no_maybe/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No Maybe',
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 5 ).theme(), //nuestro theme en config/theme/
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: FilledButton.tonal(
            onPressed: (){ }, 
            child: const Text("Haz Click")
          ),
        ),
      ),
    );
  }
}