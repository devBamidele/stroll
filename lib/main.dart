import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/theme.dart';
import 'feature/home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stroll Developer Test',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(),
      home: const Home(),
    );
  }
}
