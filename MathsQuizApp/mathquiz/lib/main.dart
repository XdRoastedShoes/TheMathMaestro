import 'package:flutter/material.dart';
import 'package:themathmaestro/home/home.dart';
import 'package:themathmaestro/lessons/lessons.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Lessons());
   
  }
}
