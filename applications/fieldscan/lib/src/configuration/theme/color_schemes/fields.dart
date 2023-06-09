import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fieldsColorSchemeProvider = Provider<ColorScheme>((ref) {
  return const ColorScheme(
      background: Color(0xfffdfcff),
      brightness: Brightness.light,
      error: Color(0xffba1a1a),
      errorContainer: Color(0xffffdad6),
      inversePrimary: Color(0xff9ecaff),
      inverseSurface: Color(0xff2f3033),
      onBackground: Color(0xff1a1c1e),
      onError: Color(0xffffffff),
      onErrorContainer: Color(0xff410002),
      onInverseSurface: Color(0xfff1f0f4),
      onPrimary: Color(0xffffffff),
      onPrimaryContainer: Color(0xff001d36),
      onSecondary: Color(0xffffffff),
      onSecondaryContainer: Color(0xff101c2b),
      onSurface: Color(0xff1a1c1e),
      onSurfaceVariant: Color(0xff43474e),
      onTertiary: Color(0xffffffff),
      onTertiaryContainer: Color(0xff251431),
      outline: Color(0xff73777f),
      outlineVariant: Color(0xffc3c7cf),
      primary: Color(0xff0061a4),
      primaryContainer: Color(0xffd1e4ff),
      secondary: Color(0xff535f70),
      secondaryContainer: Color(0xffd7e3f7),
      shadow: Color(0xff000000),
      surface: Color(0xfffdfcff),
      surfaceTint: Color(0xff0061a4),
      surfaceVariant: Color(0xffdfe2eb),
      tertiary: Color(0xff6b5778),
      tertiaryContainer: Color(0xfff2daff));
});
