import 'package:despesasmod/app/auth/auth_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  AuthModel auth = new AuthModel(email: '0@', password: '0');

  bool validateForm() {
    if (auth.email == "0@" || auth.password == "0") {
      return false;
    } else {
      return validateEmail() == null && validatePassword() == null
          ? true
          : false;
    }
  }

  String validateEmail() {
    if (auth.email == null || auth.email.isEmpty) {
      return "Preenchimento Obrigatório.";
    }
    if (!auth.email.contains('@') && auth.email.length > 0) {
      return "Digite um Email Válido";
    }

    return null;
  }

  String validatePassword() {
    if (auth.password == null || auth.password.isEmpty) {
      return "Preenchimento Obrigatório.";
    }
    return null;
  }

  login() {
    print('login');
  }

  register() {
    Modular.to.pushNamed('/register');
  }
}
