import 'package:flutter/material.dart';
import 'package:wishlist_app_mobile/app/theme/color_scale.dart';
import 'package:wishlist_app_mobile/app/theme/extensions.dart';
import 'package:wishlist_app_mobile/app/theme/tokens.dart';

const warmNeutrals = AppColorScale(
  c100: Color(0xFF1D1C18),
  c200: Color(0xFF262625),
  c300: Color(0xFF2F3132),
  c400: Color(0xFF3A3C3E),
  c500: Color(0xFF46494E),
  c600: Color(0xFF606265),
  c700: Color(0xFF80807F),
  c800: Color(0xFFC2C0B4),
  c900: Color(0xFFF3ECD6),
);
const pinkNeutrals = AppColorScale(
  c100: Color(0xFF14101A),
  c200: Color(0xFF1A1422),
  c300: Color(0xFF241B2E),
  c400: Color(0xFF32263E),
  c500: Color(0xFF43344F),
  c600: Color(0xFF5E516A),
  c700: Color(0xFF7C6F88),
  c800: Color(0xFFC9C1D1),
  c900: Color(0xFFF7F2F8),
);

class AppTheme {
  static const _radii = AppRadii(sm: 4, md: 8, lg: 12, xl: 16);
  static const _borders = AppBorders(thin: 1, normal: 2, thick: 4);
  static const _spacing = AppSpacing(sm: 6, md: 12, lg: 24, xl: 48);
  static const _breakpoints = AppBreakpoints(
    xs: 480,
    sm: 576,
    md: 768,
    lg: 1024,
    xl: 1280,
  );
  static const _buttonPadding = AppButtonPadding(
    sm: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
    md: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
    lg: EdgeInsets.symmetric(vertical: 14, horizontal: 60),
  );
  static const _shadows = AppShadows(
    sm: [
      BoxShadow(offset: Offset(0, 1), blurRadius: 2, color: Color(0x1A000000)),
    ],
    md: [
      BoxShadow(offset: Offset(0, 2), blurRadius: 5, color: Color(0x4D000000)),
    ],
    lg: [
      BoxShadow(
        offset: Offset(0, 10),
        blurRadius: 15,
        spreadRadius: -3,
        color: Color(0x99000000),
      ),
    ],
  );

  static TextTheme _textTheme(String fontFamily) => const TextTheme(
    labelSmall: TextStyle(fontSize: 8),
    labelMedium: TextStyle(fontSize: 12),
    bodySmall: TextStyle(fontSize: 14),
    bodyMedium: TextStyle(fontSize: 16),
    titleMedium: TextStyle(fontSize: 20),
    titleLarge: TextStyle(fontSize: 24),
    displaySmall: TextStyle(fontSize: 32),
  ).apply(fontFamily: fontFamily);

  static final darkTokens = AppTokens(
    white: const Color(0xFFFFFFFF),
    black: const Color(0xFF000000),
    background: const Color(0xFF232323),

    // FIX: w dark theme tekst powinien być jasny
    text: const Color(0xFFF7F2F8), // mauveNeutrals 900

    neutrals: warmNeutrals,
    primary: const AppColorScale(
      c100: Color(0xFFFFF1F2),
      c200: Color(0xFFFFE4E6),
      c300: Color(0xFFFECDD3),
      c400: Color(0xFFFDA4AF),
      c500: Color(0xFFFB7185),
      c600: Color(0xFFF43F5E),
      c700: Color(0xFFE11D48),
      c800: Color(0xFFBE123C),
      c900: Color(0xFF881337),
    ),
    secondary: const AppColorScale(
      c100: Color(0xFFFFF8E1),
      c200: Color(0xFFFFECB3),
      c300: Color(0xFFFFE08A),
      c400: Color(0xFFFFD257),
      c500: Color(0xFFF4C542),
      c600: Color(0xFFD8A72D),
      c700: Color(0xFFB8860B),
      c800: Color(0xFF8A5A00),
      c900: Color(0xFF5A3A00),
    ),
    danger: const AppColorScale(
      c100: Color(0xFF2A0E0E),
      c200: Color(0xFF3A1212),
      c300: Color(0xFF4A1616),
      c400: Color(0xFF7F1D1D),
      c500: Color(0xFFB91C1C),
      c600: Color(0xFFDC2626),
      c700: Color(0xFFEF4444),
      c800: Color(0xFFF87171),
      c900: Color(0xFFFCA5A5),
    ),
    success: const AppColorScale(
      c100: Color(0xFF062013),
      c200: Color(0xFF07301A),
      c300: Color(0xFF0B3F23),
      c400: Color(0xFF14532D),
      c500: Color(0xFF16A34A),
      c600: Color(0xFF10B981),
      c700: Color(0xFF22C55E),
      c800: Color(0xFF34D399),
      c900: Color(0xFF86EFAC),
    ),
    warning: const AppColorScale(
      c100: Color(0xFF1F1307),
      c200: Color(0xFF2A1708),
      c300: Color(0xFF3A1F0B),
      c400: Color(0xFF7C2D12),
      c500: Color(0xFFC2410C),
      c600: Color(0xFFEA580C),
      c700: Color(0xFFF97316),
      c800: Color(0xFFFB923C),
      c900: Color(0xFFFDBA74),
    ),
    info: const AppColorScale(
      c100: Color(0xFF071A24),
      c200: Color(0xFF0B2431),
      c300: Color(0xFF0F2F40),
      c400: Color(0xFF0C4A6E),
      c500: Color(0xFF15506B),
      c600: Color(0xFF0369A1),
      c700: Color(0xFF0284C7),
      c800: Color(0xFF0EA5E9),
      c900: Color(0xFF38BDF8),
    ),
    progress: const AppProgressScale(
      c100: Color(0xFFFF4B4B),
      c200: Color(0xFFFF8C42),
      c300: Color(0xFFFFD93D),
      c400: Color(0xFFB7E43F),
      c500: Color(0xFF4CAF50),
    ),
    radii: _radii,
    borders: _borders,
    spacing: _spacing,
    breakpoints: _breakpoints,
    buttonPadding: _buttonPadding,
    shadows: _shadows,
  );

  static ThemeData dark({String fontFamily = 'Inter'}) {
    final t = darkTokens;

    // Material 3: semantyczne mapowanie
    final scheme = ColorScheme(
      brightness: Brightness.dark,

      primary: t.primary.c600,
      onPrimary: t.white,

      secondary: t.secondary.c500,
      onSecondary: t.black,

      tertiary: t.info.c600,
      onTertiary: t.white,

      error: t.danger.c600,
      onError: t.white,

      surface: t.neutrals.c200,
      onSurface: t.text,

      surfaceContainerHighest: t.neutrals.c300,
      onSurfaceVariant: t.neutrals.c800,

      outline: t.neutrals.c600,
      outlineVariant: t.neutrals.c500,

      shadow: const Color(0xFF000000),
      scrim: const Color(0xFF000000),

      inverseSurface: t.neutrals.c900,
      onInverseSurface: t.neutrals.c100,
      inversePrimary: t.primary.c300,
    );

    final base = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
      textTheme: _textTheme(fontFamily).apply(
        bodyColor: scheme.onSurface,
        displayColor: scheme.onSurfaceVariant,
      ),
      extensions: <ThemeExtension<dynamic>>[t],
    );

    return base.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: scheme.primary,
        foregroundColor: scheme.onPrimary,
        elevation: 0,
        centerTitle: false,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: t.buttonPadding.md,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(t.radii.md),
          ),
          textStyle: base.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: t.buttonPadding.md,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(t.radii.md),
          ),
          side: BorderSide(color: scheme.primary, width: t.borders.normal),
          textStyle: base.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: t.buttonPadding.md,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(t.radii.md),
          ),
          textStyle: base.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      cardTheme: CardThemeData(color: t.neutrals.c400),
    );
  }
}

extension AppTokensX on BuildContext {
  AppTokens get tokens => Theme.of(this).extension<AppTokens>()!;
}

/// Wygodny dostęp do tokenów: context.tokens.spacing, context.tokens.primary.at(700), itd.
