import 'package:flutter/material.dart';
import 'package:wishlist_app_mobile/app/pages/home/home.dart';
import 'package:wishlist_app_mobile/app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/signup': (context) => const Text("Sginup"),
        '/login': (context) => const Text("login"),
      },
    );
  }
}
