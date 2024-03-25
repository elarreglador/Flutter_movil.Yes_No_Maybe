import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ud5_yes_no_maybe/config/theme/app_theme.dart';
import 'package:ud5_yes_no_maybe/presentation/providers/chat_provider.dart';
import 'package:ud5_yes_no_maybe/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
        title: 'Yes No Maybe',
        debugShowCheckedModeBanner: false,
        theme: AppTheme( selectedColor:  2 ).theme(), //nuestro theme en config/theme/
        home: const ChatScreen(), //funcion con el AppBar y el body
      ),
    );
  }
}