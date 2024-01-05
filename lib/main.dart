import 'package:class_case_barisalisaglam/view/main_page.dart';
import 'package:class_case_barisalisaglam/view_model/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (BuildContext context) => MainViewModel(),
        child: const MainPage(),
      ),
    );
  }
}
