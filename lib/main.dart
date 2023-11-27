import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/colors.dart';
import 'package:tiktok_clone/views/screens/auth/login_sreen.dart';
import 'package:tiktok_clone/views/screens/auth/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: SignUpScreen(),
    );
  }
}
