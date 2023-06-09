import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainColorSchemeProvider = Provider<ColorScheme>((ref) {
  return const ColorScheme(
      background: Color(0xffffffff),
      brightness: Brightness.light,
      error: Color(0xffba1a1a),
      errorContainer: Color(0xffffffff),
      inversePrimary: Color(0xffffb4a6),
      inverseSurface: Color(0xff362f2d),
      onBackground: Color(0xff001f24),
      onError: Color(0xffffffff),
      onErrorContainer: Color(0xff001f24),
      onInverseSurface: Color(0xffffffff),
      onPrimary: Color(0xffffffff),
      onPrimaryContainer: Color(0xff001f24),
      onSecondary: Color(0xffffffff),
      onSecondaryContainer: Color(0xff001f24),
      onSurface: Color(0xff001f24),
      onSurfaceVariant: Color(0xff004f58),
      onTertiary: Color(0xffffffff),
      onTertiaryContainer: Color(0xff241a00),
      outline: Color(0xff85736f),
      outlineVariant: Color(0xffd8c2bd),
      primary: Color(0xffab3421),
      primaryContainer: Color(0xffffffff),
      secondary: Color(0xff775650),
      secondaryContainer: Color(0xffffffff),
      shadow: Color(0xff000000),
      surface: Color(0xffffffff),
      surfaceTint: Color(0xffab3421),
      surfaceVariant: Color(0xffffffff),
      tertiary: Color(0xff6f5c2e),
      tertiaryContainer: Color(0xfffae0a6));
});
