import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String email = "0@";
  @observable
  String password = "0";

  bool validateForm() {
    if (email == "0@" || password == "0") {
      return false;
    } else {
      return validateEmail() == null && validatePassword() == null
          ? true
          : false;
    }
  }

  String validateEmail() {
    if (email == null || email.isEmpty) {
      return "Preenchimento Obrigatório.";
    }
    if (!email.contains('@') && email.length > 0) {
      return "Digite um Email Válido";
    }

    return null;
  }

  String validatePassword() {
    if (password == null || password.isEmpty) {
      return "Preenchimento Obrigatório.";
    }
    return null;
  }

  @action
  changeEmail(String newValue) => email = newValue;

  @action
  changePassword(String newValue) => password = newValue;

  login() {
    print('login');
  }

  register() {
    Modular.to.pushNamed('/register');
  }
}
