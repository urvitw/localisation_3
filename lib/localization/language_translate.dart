import "package:flutter/material.dart";

import "app_localization.dart";

String localise(BuildContext context, String key) {
  String? translatedValue = AppLocalization.of(context).translate(key);
  return translatedValue ?? key;
}

String localiseWithParams(
    BuildContext context, String key, Map<String, dynamic> args) {
  String str = localise(context, key);
  args.forEach((key, value) {
    str = str.replaceAll(RegExp("@{$key}"), value.toString());
  });
  return str;
}
