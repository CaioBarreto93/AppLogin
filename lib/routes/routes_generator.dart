import 'package:flutter/material.dart';
import 'package:login/modules/listagem/page/listagem.dart';
import 'package:login/modules/login/pages/login.dart';

import '../shared/constants.dart';

class RoutesGenerator {
  static const loginPage = '/';
  static const listagemPage = '/listagem';

  RoutesGenerator._();

  static Route generate(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return _goPage(const MyLoginPage());
      case listagemPage:
        return _goPage(const ListagemPage());
      default:
        throw const FormatException(AppConstants.pageNotFound);
    }
  }

  static _goPage(Widget page) => MaterialPageRoute(
        builder: (_) => page,
      );
}
