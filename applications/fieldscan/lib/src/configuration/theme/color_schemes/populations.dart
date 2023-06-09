import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final populationsColorSchemeProvider = Provider<ColorScheme>((ref) {
  return const ColorScheme(
      background: Color(0xffffffff),
      brightness: Brightness.light,
      error: Color(0xffba1a1a),
      errorContainer: Color(0xffffdad6),
      inversePrimary: Color(0xffbdc2ff),
      inverseSurface: Color(0xff303034),
      onBackground: Color(0xff001f24),
      onError: Color(0xffffffff),
      onErrorContainer: Color(0xff410002),
      onInverseSurface: Color(0xfff3f0f4),
      onPrimary: Color(0xffffffff),
      onPrimaryContainer: Color(0xff000767),
      onSecondary: Color(0xffffffff),
      onSecondaryContainer: Color(0xff181a2c),
      onSurface: Color(0xff001f24),
      onSurfaceVariant: Color(0xff46464f),
      onTertiary: Color(0xffffffff),
      onTertiaryContainer: Color(0xff2e1126),
      outline: Color(0xff777680),
      outlineVariant: Color(0xffc7c5d0),
      primary: Color(0xff4c56af),
      primaryContainer: Color(0xffe0e0ff),
      secondary: Color(0xff5c5d72),
      secondaryContainer: Color(0xffe1e0f9),
      shadow: Color(0xff000000),
      surface: Color(0xffffffff),
      surfaceTint: Color(0xff4c56af),
      surfaceVariant: Color(0xffe3e1ec),
      tertiary: Color(0xff78536b),
      tertiaryContainer: Color(0xffffd7ef));
});
