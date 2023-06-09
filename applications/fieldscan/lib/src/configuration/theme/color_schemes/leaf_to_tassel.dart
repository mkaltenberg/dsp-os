import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final leafToTasselColorSchemeProvider = Provider<ColorScheme>((ref) {
  return const ColorScheme(
      background: Color(0xffffffff),
      brightness: Brightness.light,
      error: Color(0xffba1a1a),
      errorContainer: Color(0xffffdad6),
      inversePrimary: Color(0xff7ddc7a),
      inverseSurface: Color(0xff2f312d),
      onBackground: Color(0xff001f24),
      onError: Color(0xffffffff),
      onErrorContainer: Color(0xff410002),
      onInverseSurface: Color(0xfff0f1eb),
      onPrimary: Color(0xffffffff),
      onPrimaryContainer: Color(0xff002204),
      onSecondary: Color(0xffffffff),
      onSecondaryContainer: Color(0xff111f0f),
      onSurface: Color(0xff1a1c19),
      onSurfaceVariant: Color(0xff424940),
      onTertiary: Color(0xffffffff),
      onTertiaryContainer: Color(0xff002023),
      outline: Color(0xff72796f),
      outlineVariant: Color(0xffc2c9bd),
      primary: Color(0xff006e1c),
      primaryContainer: Color(0xffb6f2af),
      secondary: Color(0xff52634f),
      secondaryContainer: Color(0xffd5e8cf),
      shadow: Color(0xff000000),
      surface: Color(0xfffcfdf6),
      surfaceTint: Color(0xff006e1c),
      surfaceVariant: Color(0xffdee5d8),
      tertiary: Color(0xff38656a),
      tertiaryContainer: Color(0xffbcebf0));
});
