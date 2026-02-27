import 'package:flutter/material.dart';
import 'package:wishlist_app_mobile/app/theme/color_scale.dart';
import 'package:wishlist_app_mobile/app/theme/tokens.dart';

/// ----- ThemeExtension with your full design system -----
@immutable
class AppTokens extends ThemeExtension<AppTokens> {
  final Color white;
  final Color black;
  final Color background;
  final Color text; // base text color (for onBackground/onSurface)

  final AppColorScale neutrals;
  final AppColorScale primary;
  final AppColorScale secondary;
  final AppColorScale danger;
  final AppColorScale success;
  final AppColorScale warning;
  final AppColorScale info;
  final AppProgressScale progress;

  final AppRadii radii;
  final AppBorders borders;
  final AppSpacing spacing;
  final AppBreakpoints breakpoints;
  final AppButtonPadding buttonPadding;
  final AppShadows shadows;

  const AppTokens({
    required this.white,
    required this.black,
    required this.background,
    required this.text,
    required this.neutrals,
    required this.primary,
    required this.secondary,
    required this.danger,
    required this.success,
    required this.warning,
    required this.info,
    required this.progress,
    required this.radii,
    required this.borders,
    required this.spacing,
    required this.breakpoints,
    required this.buttonPadding,
    required this.shadows,
  });

  @override
  AppTokens copyWith({
    Color? white,
    Color? black,
    Color? background,
    Color? text,
    AppColorScale? neutrals,
    AppColorScale? primary,
    AppColorScale? secondary,
    AppColorScale? danger,
    AppColorScale? success,
    AppColorScale? warning,
    AppColorScale? info,
    AppProgressScale? progress,
    AppRadii? radii,
    AppBorders? borders,
    AppSpacing? spacing,
    AppBreakpoints? breakpoints,
    AppButtonPadding? buttonPadding,
    AppShadows? shadows,
  }) {
    return AppTokens(
      white: white ?? this.white,
      black: black ?? this.black,
      background: background ?? this.background,
      text: text ?? this.text,
      neutrals: neutrals ?? this.neutrals,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      danger: danger ?? this.danger,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      progress: progress ?? this.progress,
      radii: radii ?? this.radii,
      borders: borders ?? this.borders,
      spacing: spacing ?? this.spacing,
      breakpoints: breakpoints ?? this.breakpoints,
      buttonPadding: buttonPadding ?? this.buttonPadding,
      shadows: shadows ?? this.shadows,
    );
  }

  @override
  AppTokens lerp(ThemeExtension<AppTokens>? other, double t) {
    if (other is! AppTokens) return this;

    Color lc(Color a, Color b) => Color.lerp(a, b, t)!;

    return AppTokens(
      white: lc(white, other.white),
      black: lc(black, other.black),
      background: lc(background, other.background),
      text: lc(text, other.text),
      neutrals: AppColorScale.lerp(neutrals, other.neutrals, t),
      primary: AppColorScale.lerp(primary, other.primary, t),
      secondary: AppColorScale.lerp(secondary, other.secondary, t),
      danger: AppColorScale.lerp(danger, other.danger, t),
      success: AppColorScale.lerp(success, other.success, t),
      warning: AppColorScale.lerp(warning, other.warning, t),
      info: AppColorScale.lerp(info, other.info, t),
      progress: AppProgressScale.lerp(progress, other.progress, t),
      radii: AppRadii.lerp(radii, other.radii, t),
      borders: AppBorders.lerp(borders, other.borders, t),
      spacing: AppSpacing.lerp(spacing, other.spacing, t),
      breakpoints: AppBreakpoints.lerp(breakpoints, other.breakpoints, t),
      buttonPadding: AppButtonPadding.lerp(buttonPadding, other.buttonPadding, t),
      shadows: AppShadows.lerp(shadows, other.shadows, t),
    );
  }
}
