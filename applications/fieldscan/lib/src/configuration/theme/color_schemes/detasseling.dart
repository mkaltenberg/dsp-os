import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final detasselingColorSchemeProvider = Provider<ColorScheme>((ref) {
  return const ColorScheme(
      background: Color(0xffffffff),
      brightness: Brightness.light,
      error: Color(0xffba1a1a),
      errorContainer: Color(0xffffdad6),
      inversePrimary: Color(0xffffb4a9),
      inverseSurface: Color(0xff362f2e),
      onBackground: Color(0xff001f24),
      onError: Color(0xffffffff),
      onErrorContainer: Color(0xff410002),
      onInverseSurface: Color(0xfffbeeec),
      onPrimary: Color(0xffffffff),
      onPrimaryContainer: Color(0xff410001),
      onSecondary: Color(0xffffffff),
      onSecondaryContainer: Color(0xff2c1512),
      onSurface: Color(0xff001f24),
      onSurfaceVariant: Color(0xff534341),
      onTertiary: Color(0xffffffff),
      onTertiaryContainer: Color(0xff261a00),
      outline: Color(0xff857370),
      outlineVariant: Color(0xffd8c2be),
      primary: Color(0xffbb1614),
      primaryContainer: Color(0xffffdad5),
      secondary: Color(0xff775652),
      secondaryContainer: Color(0xffffdad5),
      shadow: Color(0xff000000),
      surface: Color(0xffffffff),
      surfaceTint: Color(0xffbb1614),
      surfaceVariant: Color(0xfff5ddda),
      tertiary: Color(0xff705c2e),
      tertiaryContainer: Color(0xfffcdfa6));
});
