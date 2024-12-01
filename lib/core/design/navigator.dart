import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future appGoto(
  Widget page, {
  bool keepHistory = true,
  bool isReplacement = false,
}) {
  if (isReplacement) {
    return Navigator.pushReplacement(
      navigatorKey.currentContext!,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
  return Navigator.pushAndRemoveUntil(
    navigatorKey.currentContext!,
    MaterialPageRoute(
      builder: (context) => page,
    ),
    (route) => keepHistory,
  );
}
