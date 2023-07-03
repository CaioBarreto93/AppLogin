import 'package:flutter/material.dart';
import 'package:login/modules/login/pages/login.dart';

import '../shared/constants.dart';

class RoutesGenerator {
  static const loginPage = '/';

  RoutesGenerator._();

  static Route generate(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return _goPage(const MyLoginPage());
      default:
        throw const FormatException(AppConstants.pageNotFound);
    }
  }

  static _goPage(Widget page) => MaterialPageRoute(
        builder: (_) => page,
      );
}
