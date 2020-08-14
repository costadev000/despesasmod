// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  final _$authAtom = Atom(name: '_RegisterControllerBase.auth');

  @override
  AuthModel get auth {
    _$authAtom.reportRead();
    return super.auth;
  }

  @override
  set auth(AuthModel value) {
    _$authAtom.reportWrite(value, super.auth, () {
      super.auth = value;
    });
  }

  final _$successAtom = Atom(name: '_RegisterControllerBase.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$confEmailAtom = Atom(name: '_RegisterControllerBase.confEmail');

  @override
  String get confEmail {
    _$confEmailAtom.reportRead();
    return super.confEmail;
  }

  @override
  set confEmail(String value) {
    _$confEmailAtom.reportWrite(value, super.confEmail, () {
      super.confEmail = value;
    });
  }

  final _$confPasswordAtom = Atom(name: '_RegisterControllerBase.confPassword');

  @override
  String get confPassword {
    _$confPasswordAtom.reportRead();
    return super.confPassword;
  }

  @override
  set confPassword(String value) {
    _$confPasswordAtom.reportWrite(value, super.confPassword, () {
      super.confPassword = value;
    });
  }

  final _$_RegisterControllerBaseActionController =
      ActionController(name: '_RegisterControllerBase');

  @override
  dynamic confirmEmail(String newValue) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.confirmEmail');
    try {
      return super.confirmEmail(newValue);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic confirmPassword(String newValue) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.confirmPassword');
    try {
      return super.confirmPassword(newValue);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
auth: ${auth},
success: ${success},
confEmail: ${confEmail},
confPassword: ${confPassword}
    ''';
  }
}
