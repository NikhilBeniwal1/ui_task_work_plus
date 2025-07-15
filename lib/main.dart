import 'package:flutter/material.dart';
import 'package:ui_task_work_plus/ui/screens/home_page.dart';
import 'package:ui_task_work_plus/ui/theme/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Work Plus',
      theme: ThemeData(
        fontFamily: 'SF Pro Text',
        primaryColor: AppColors.primary,
      ),
      home: const HomePage(),
    );
  }
}
