import 'package:flutter/material.dart';
import 'package:login/modules/about/page/about.dart';
import 'package:login/modules/listagem/page/listagem.dart';
import 'package:login/modules/login/pages/login.dart';

import '../shared/constants.dart';

class RoutesGenerator {
  static const loginPage = '/';
  static const listagemPage = '/listagem';
  static const aboutPage = '/about';

  RoutesGenerator._();

  static Route generate(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return _goPage(const MyLoginPage());
      case listagemPage:
        return _goPage(const ListagemPage());
      case aboutPage:
        return _goPage(const AboutPage());
      default:
        throw const FormatException(AppConstants.pageNotFound);
    }
  }

  static _goPage(Widget page) => MaterialPageRoute(
        builder: (_) => page,
      );
}
