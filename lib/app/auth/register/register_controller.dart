import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:despesasmod/app/auth/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  @observable
  AuthModel auth = new AuthModel(name: '0', email: '0@', password: '0');

  @observable
  bool success = false;

  @observable
  String confEmail;

  @action
  confirmEmail(String newValue) => confEmail = newValue;

  @observable
  String confPassword;

  @action
  confirmPassword(String newValue) => confPassword = newValue;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final _db = Firestore.instance;

  String validateName() {
    if (auth.name == null || auth.name.isEmpty) {
      return "Preenchimento Obrigatório";
    }
    return null;
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

  String validateEmailConf() {
    if (auth.email != confEmail && auth.email != '0@') {
      return "Campos Email e Confirmação de Email devem ser idênticos";
    }
    return null;
  }

  String validatePassConf() {
    if (auth.password != confPassword && auth.password != '0') {
      return "Campos Senha e Confirmação de Senha devem ser idênticos";
    }
    return null;
  }

  String validatePassword() {
    if (auth.password == null || auth.password.isEmpty) {
      return "Preenchimento Obrigatório.";
    }
    return null;
  }

  bool validateForm() {
    if (auth.email == "0@" || auth.password == "0" || auth.name == "0") {
      return false;
    } else {
      return validateEmail() == null && validatePassword() == null
          ? true
          : false;
    }
  }

  void register() async {
    final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: auth.email,
      password: auth.password,
    ))
        .user;
    if (user != null) {
      _db.collection("users").add({
        "name": auth.name,
        "email": user.email,
        "id": user.uid,
      });
      success = true;
    } else {
      success = false;
    }
  }
}
