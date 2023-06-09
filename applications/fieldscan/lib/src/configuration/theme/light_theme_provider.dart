import 'package:fieldscan/src/configuration/theme/typography.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lightThemeColorProvider =
    Provider.family<ThemeData, AppModule>((ref, appModule) {
  return ThemeData(
      applyElevationOverlayColor: false,
      brightness: Brightness.light,
      buttonTheme: ButtonThemeData(
          alignedDropdown: false,
          colorScheme: ref.read(appModule.colorScheme),
          height: 36,
          layoutBehavior: ButtonBarLayoutBehavior.padded,
          minWidth: 88,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(2, 2),
                  bottomRight: Radius.elliptical(2, 2),
                  topLeft: Radius.elliptical(2, 2),
                  topRight: Radius.elliptical(2, 2))),
          textTheme: ButtonTextTheme.normal),
      canvasColor: const Color(0xffffffff),
      cardColor: const Color(0xffffffff),
      dialogBackgroundColor: const Color(0xffffffff),
      disabledColor: const Color(0x61000000),
      dividerColor: const Color(0x1f001f24),
      focusColor: const Color(0x1f000000),
      highlightColor: const Color(0x66bcbcbc),
      hintColor: const Color(0x99000000),
      hoverColor: const Color(0x0a000000),
      iconTheme: const IconThemeData(color: Color(0xdd000000)),
      indicatorColor: const Color(0xffffffff),
      inputDecorationTheme: const InputDecorationTheme(
          alignLabelWithHint: false,
          filled: false,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          isCollapsed: false,
          isDense: false),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
      useMaterial3: false,
      colorScheme: ref.read(appModule.colorScheme),
      textTheme: textTheme);
});
