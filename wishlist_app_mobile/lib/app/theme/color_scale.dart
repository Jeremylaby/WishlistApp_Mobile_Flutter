import 'package:flutter/material.dart';
/// ----- Color scales (100..900) -----
@immutable
class AppColorScale {
  final Color c100, c200, c300, c400, c500, c600, c700, c800, c900;

  const AppColorScale({
    required this.c100,
    required this.c200,
    required this.c300,
    required this.c400,
    required this.c500,
    required this.c600,
    required this.c700,
    required this.c800,
    required this.c900,
  });

  Color at(int shade) {
    switch (shade) {
      case 100:
        return c100;
      case 200:
        return c200;
      case 300:
        return c300;
      case 400:
        return c400;
      case 500:
        return c500;
      case 600:
        return c600;
      case 700:
        return c700;
      case 800:
        return c800;
      case 900:
        return c900;
      default:
        throw ArgumentError('Shade must be one of: 100..900');
    }
  }

  static AppColorScale lerp(AppColorScale a, AppColorScale b, double t) {
    Color lc(Color x, Color y) => Color.lerp(x, y, t)!;
    return AppColorScale(
      c100: lc(a.c100, b.c100),
      c200: lc(a.c200, b.c200),
      c300: lc(a.c300, b.c300),
      c400: lc(a.c400, b.c400),
      c500: lc(a.c500, b.c500),
      c600: lc(a.c600, b.c600),
      c700: lc(a.c700, b.c700),
      c800: lc(a.c800, b.c800),
      c900: lc(a.c900, b.c900),
    );
  }
}

@immutable
class AppProgressScale {
  final Color c100, c200, c300, c400, c500;

  const AppProgressScale({
    required this.c100,
    required this.c200,
    required this.c300,
    required this.c400,
    required this.c500,
  });

  static AppProgressScale lerp(AppProgressScale a, AppProgressScale b, double t) {
    Color lc(Color x, Color y) => Color.lerp(x, y, t)!;
    return AppProgressScale(
      c100: lc(a.c100, b.c100),
      c200: lc(a.c200, b.c200),
      c300: lc(a.c300, b.c300),
      c400: lc(a.c400, b.c400),
      c500: lc(a.c500, b.c500),
    );
  }
}
