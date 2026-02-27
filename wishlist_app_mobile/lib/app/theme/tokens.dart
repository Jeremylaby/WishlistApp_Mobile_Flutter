import 'dart:ui';

import 'package:flutter/material.dart';

/// ----- Tokens -----
@immutable
class AppRadii {
  final double sm, md, lg, xl;
  const AppRadii({required this.sm, required this.md, required this.lg, required this.xl});

  static AppRadii lerp(AppRadii a, AppRadii b, double t) => AppRadii(
        sm: lerpDouble(a.sm, b.sm, t)!,
        md: lerpDouble(a.md, b.md, t)!,
        lg: lerpDouble(a.lg, b.lg, t)!,
        xl: lerpDouble(a.xl, b.xl, t)!,
      );
}

@immutable
class AppBorders {
  final double thin, normal, thick;
  const AppBorders({required this.thin, required this.normal, required this.thick});

  static AppBorders lerp(AppBorders a, AppBorders b, double t) => AppBorders(
        thin: lerpDouble(a.thin, b.thin, t)!,
        normal: lerpDouble(a.normal, b.normal, t)!,
        thick: lerpDouble(a.thick, b.thick, t)!,
      );
}

@immutable
class AppSpacing {
  final double sm, md, lg, xl;
  const AppSpacing({required this.sm, required this.md, required this.lg, required this.xl});

  static AppSpacing lerp(AppSpacing a, AppSpacing b, double t) => AppSpacing(
        sm: lerpDouble(a.sm, b.sm, t)!,
        md: lerpDouble(a.md, b.md, t)!,
        lg: lerpDouble(a.lg, b.lg, t)!,
        xl: lerpDouble(a.xl, b.xl, t)!,
      );
}

@immutable
class AppBreakpoints {
  final double xs, sm, md, lg, xl;
  const AppBreakpoints({required this.xs, required this.sm, required this.md, required this.lg, required this.xl});

  static AppBreakpoints lerp(AppBreakpoints a, AppBreakpoints b, double t) => AppBreakpoints(
        xs: lerpDouble(a.xs, b.xs, t)!,
        sm: lerpDouble(a.sm, b.sm, t)!,
        md: lerpDouble(a.md, b.md, t)!,
        lg: lerpDouble(a.lg, b.lg, t)!,
        xl: lerpDouble(a.xl, b.xl, t)!,
      );
}

@immutable
class AppButtonPadding {
  final EdgeInsets sm, md, lg;
  const AppButtonPadding({required this.sm, required this.md, required this.lg});

  static AppButtonPadding lerp(AppButtonPadding a, AppButtonPadding b, double t) => AppButtonPadding(
        sm: EdgeInsets.lerp(a.sm, b.sm, t)!,
        md: EdgeInsets.lerp(a.md, b.md, t)!,
        lg: EdgeInsets.lerp(a.lg, b.lg, t)!,
      );
}

@immutable
class AppShadows {
  final List<BoxShadow> sm, md, lg;
  const AppShadows({required this.sm, required this.md, required this.lg});

  static AppShadows lerp(AppShadows a, AppShadows b, double t) {
    List<BoxShadow> lerpList(List<BoxShadow> x, List<BoxShadow> y) {
      if (x.isEmpty || y.isEmpty) return t < 0.5 ? x : y;
      return [BoxShadow.lerp(x.first, y.first, t)!];
    }

    return AppShadows(
      sm: lerpList(a.sm, b.sm),
      md: lerpList(a.md, b.md),
      lg: lerpList(a.lg, b.lg),
    );
  }
}