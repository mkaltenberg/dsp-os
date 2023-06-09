import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final scoutingColorSchemeProvider = Provider<ColorScheme>((ref) {
  return const ColorScheme(
      background: Color(0xffffffff),
      brightness: Brightness.light,
      error: Color(0xffba1a1a),
      errorContainer: Color(0xffffffff),
      inversePrimary: Color(0xffffb5a0),
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
      onTertiaryContainer: Color(0xff231b00),
      outline: Color(0xff85736e),
      outlineVariant: Color(0xffd8c2bc),
      primary: Color(0xffdb5626),
      primaryContainer: Color(0xffffffff),
      secondary: Color(0xff77574e),
      secondaryContainer: Color(0xffffffff),
      shadow: Color(0xff000000),
      surface: Color(0xffffffff),
      surfaceTint: Color(0xffb02f00),
      surfaceVariant: Color(0xffffffff),
      tertiary: Color(0xff6c5d2f),
      tertiaryContainer: Color(0xfff5e1a7));
});
