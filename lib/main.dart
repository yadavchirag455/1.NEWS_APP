import 'package:flutter/material.dart';
import 'package:news_application_practise/pages/home.dart';
import 'package:news_application_practise/utils/colours.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: AppColors.primary),
      home: Home(),
    );
  }
}
