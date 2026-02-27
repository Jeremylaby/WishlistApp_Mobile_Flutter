import 'package:flutter/material.dart';
import 'package:wishlist_app_mobile/app/pages/home/widgets/auth_card.dart';
import 'package:wishlist_app_mobile/app/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: AuthCard(
          icon: Icons.person,
          onLogin: () {
            Navigator.pushNamed(context, "/login");
          },
          onSignup: () {
            Navigator.pushNamed(context, "/signup");
          },
        ),
      ),
    );
  }
}
