import 'package:flutter/cupertino.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';
import 'package:redrodrigo/shared/enums.dart';

const kFontFamily = 'FiraCode';
const aboutMePageRoute = 'aboutme';
const String twitterIconPath = 'assets/icons/twitter.png';
const String linkedinIconPath = 'assets/icons/linkedin.png';
const String githubIconPath = 'assets/icons/github.png';
const String instagramIconPath = 'assets/icons/instagram.png';

const Map<TextType, Color> textColorMap = {
  TextType.keyword: accentPurpleColor,
  TextType.symbol: secondaryWhiteColor,
  TextType.lineNo: secondaryWhiteColor,
  TextType.variable: projectTitleColor,
  TextType.string: accentGreenColor
};
