import 'package:flutter/material.dart';
import 'package:jobapp/screens/homescreen.dart';
import 'package:jobapp/widgets/profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "",
        debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
