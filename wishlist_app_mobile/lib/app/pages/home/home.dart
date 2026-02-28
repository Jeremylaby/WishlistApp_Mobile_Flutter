import 'package:flutter/material.dart';
import 'package:wishlist_app_mobile/app/pages/home/widgets/auth_card.dart';
import 'package:wishlist_app_mobile/app/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final scheme = Theme.of(context).colorScheme;
    void onSignup() {
      Navigator.pushNamed(context, "/signup");
    }

    void onLogin() {
      Navigator.pushNamed(context, "/login");
    }

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text(
    //       'Home Page',
    //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //     ),
    //   ),
    //   body: Center(
    //     child: AuthCard(
    //       icon: Icons.person,
    //       onLogin: () {
    //         Navigator.pushNamed(context, "/login");
    //       },
    //       onSignup: () {
    //         Navigator.pushNamed(context, "/signup");
    //       },
    //     ),
    //   ),
    // );

    return Container(
      color: scheme.surface,
      padding: EdgeInsets.symmetric(
        horizontal: t.spacing.md,
        vertical: t.spacing.xl,
      ),

      child: Column(
        children: [
          SizedBox(height: t.spacing.md),
          Text(
            'Welcome',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontWeight: FontWeight.w700,
              color: t.primary.c100,
            ),
          ),

          Text(
            'Creat your WishList\nFind your friends \nCheck their WishList\nBuy presents for them',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(color: t.primary.c400),
          ),
          Expanded(
            child: Image.asset(
              'assets/img/wishapplogo_3.png',
              fit: BoxFit.contain,
              color: t.neutrals.c400,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: onSignup,
              style: OutlinedButton.styleFrom(
                padding: t.buttonPadding.lg,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(t.radii.md),
                ),
              ),
              child: const Text('Signup'),
            ),
          ),
          SizedBox(height: t.spacing.sm),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: onLogin,
              style: FilledButton.styleFrom(
                padding: t.buttonPadding.lg,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(t.radii.md),
                ),
              ),
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
