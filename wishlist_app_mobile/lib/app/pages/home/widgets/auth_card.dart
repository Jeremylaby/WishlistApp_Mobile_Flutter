import 'package:flutter/material.dart';
import 'package:wishlist_app_mobile/app/theme/app_theme.dart';

class AuthCard extends StatelessWidget {
  final IconData icon;
  final VoidCallback onLogin;
  final VoidCallback onSignup;

  const AuthCard({
    super.key,
    required this.icon,
    required this.onLogin,
    required this.onSignup,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final scheme = Theme.of(context).colorScheme;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 360),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(t.spacing.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: scheme.primary,
                  borderRadius: BorderRadius.circular(t.radii.xl),
                  border: Border.all(
                    color: scheme.primary,
                    width: t.borders.thin,
                  ),
                ),
                child: Icon(icon, size: 44, color: scheme.onPrimary),
              ),
              SizedBox(height: t.spacing.lg),
              Text(
                'Welcome',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: t.spacing.sm),
              Text(
                'Log in to manage wishlists\nor create a new account.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
              SizedBox(height: t.spacing.xl),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: onLogin,
                      child: Text(
                        'Login',
                        style: TextStyle(color: scheme.onPrimary),
                      ),
                    ),
                  ),
                  SizedBox(width: t.spacing.md),
                  Expanded(
                    child: FilledButton(
                      onPressed: onSignup,
                      style: FilledButton.styleFrom(
                        padding: t.buttonPadding.md,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(t.radii.md),
                        ),
                      ),
                      child: const Text('Signup'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
