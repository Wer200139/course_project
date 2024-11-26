import 'package:flutter/material.dart';

import 'colors.dart';

extension CwTextStyle on TextStyle {
  TextStyle withColor(Color color) => merge(TextStyle(color: color));
  TextStyle withWeight(FontWeight weight) => merge(TextStyle(fontWeight: weight));
}

abstract class CwTextStyles {

  static const headerProfile = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.primary,
    decoration: TextDecoration.none,
  );

  static const header1 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.primaryText,
    decoration: TextDecoration.none,
  );

  static const headerSubText = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: _letterSpacingBase,
    color: CwColors.subText,
    decoration: TextDecoration.none,
  );

  static const header2 = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.customWhite,
    decoration: TextDecoration.none,
  );

  static const headerWidget = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: Color(0xFF000000),
    decoration: TextDecoration.none,
  );

  static const headerModal = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.startHeaderPrimary,
    decoration: TextDecoration.none,
  );

  static const costLabel = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.startHeaderPrimary,
    decoration: TextDecoration.none,
  );

  static const textWidget = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.subText,
    decoration: TextDecoration.none,
  );

  static const timeWidget = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.subText,
    decoration: TextDecoration.none,
  );

  static const tag = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.primaryText,
    decoration: TextDecoration.none,
  );

  static const profileInfo = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.primaryText,
    decoration: TextDecoration.none,
  );

  static const activatedButton = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: _lineHeightXl,
    letterSpacing: _letterSpacingBase,
    decoration: TextDecoration.none,
  );

  static const deactivatedButton = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: CwColors.separatorGray,
    height: _lineHeightXl,
    letterSpacing: _letterSpacingBase,
    decoration: TextDecoration.none,
  );

  static const smallButton = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    height: _lineHeight2Xl,
    letterSpacing: _letterSpacingBase,
    decoration: TextDecoration.none,
  );

  static const textButton = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    height: _lineHeight2Xl,
    letterSpacing: _letterSpacingBase,
    decoration: TextDecoration.none,
  );

  static const textField = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.primaryText,
    decoration: TextDecoration.none,
    overflow: TextOverflow.fade,
  );

  static const labelTextField = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 1,
    letterSpacing: 0,
    color: CwColors.subText,
    decoration: TextDecoration.none,
    overflow: TextOverflow.ellipsis,
  );

  static const errorTextField = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 1,
    letterSpacing: 0,
    color: CwColors.error,
    decoration: TextDecoration.none,
    overflow: TextOverflow.ellipsis,
  );

  static const checkBoxLabel = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.primaryText,
    decoration: TextDecoration.none,
  );

  static const switchBtnText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.customWhite,
    decoration: TextDecoration.none,
  );

  static const nameText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.startHeaderPrimary,
    decoration: TextDecoration.none,
  );

  static const chatUserName = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.primaryText,
    decoration: TextDecoration.none,
  );

  static const chatUserStatus = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.subText,
    decoration: TextDecoration.none,
  );

  static const chatTextMsg = TextStyle(
    fontFamily: 'Inter',
    fontSize: _fontSizeLg,
    fontWeight: FontWeight.w400,
    color: CwColors.primaryText,
    height: _lineHeightMd,
  );

  static const chatDateMsg = TextStyle(
    fontFamily: 'Inter',
    fontSize: _fontSizeSm,
    fontWeight: FontWeight.w400,
    color: CwColors.subText,
    height: _lineHeightMd,
  );

  static const chatSystemMsg = TextStyle(
    fontFamily: 'Inter',
    fontSize: _fontSizeSm,
    fontWeight: FontWeight.w400,
    color: CwColors.primary,
    height: _lineHeightMd,
  );

  static const chatTextTime = TextStyle(
    fontFamily: 'Inter',
    fontSize: _fontSizeSm,
    fontWeight: FontWeight.w400,
    color: Color(0xff858585),
    height: _lineHeightXs,
  );

  static const chatPreviewMessage = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.subText,
    decoration: TextDecoration.none,
  );

  static const nameTextComment = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.startHeaderPrimary,
    decoration: TextDecoration.none,
  );

  static const textComment = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.primaryText,
    decoration: TextDecoration.none,
  );

  static const labelPremium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.separatorGray,
    decoration: TextDecoration.none,
  );

  static const taskHeader = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.startHeaderPrimary,
    decoration: TextDecoration.none,
    overflow: TextOverflow.fade,
  );

  static const taskText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.primaryText,
    decoration: TextDecoration.none,
  );

  static const taskCounter = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    height: 0,
    letterSpacing: 0,
    color: CwColors.primaryText,
    decoration: TextDecoration.none,
  );

  static const _fontSizeXs = 12.0;
  static const _fontSizeSm = 14.0;
  static const _fontSizeMd = 16.0;
  static const _fontSizeLg = 18.0;
  static const _fontSizeXl = 20.0;
  static const _fontSize2Xl = 22.0;
  static const _fontSize3Xl = 34.0;
  static const _fontSize4Xl = 40.0;
  static const _fontSize5Xl = 60.0;
  static const _fontSize6Xl = 96.0;

  static const _lineHeightXs = 1.0;
  static const _lineHeightSm = 1.0;
  static const _lineHeightMd = 1.0;
  static const _lineHeightLg = 1.0;
  static const _lineHeightXl = 1.0;
  static const _lineHeight2Xl = 1.0;
  static const _lineHeight3Xl = 1.0;
  static const _lineHeight4Xl = 1.0;

  static const _letterSpacing2Xs = -1.5;
  static const _letterSpacingXs = -0.5;
  static const _letterSpacingBase = 0.0;
  static const _letterSpacingLg = 0.15;
  static const _letterSpacing5Xl = 1.5;
}
