// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthModel on _AuthModelBase, Store {
  final _$nameAtom = Atom(name: '_AuthModelBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_AuthModelBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_AuthModelBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_AuthModelBaseActionController =
      ActionController(name: '_AuthModelBase');

  @override
  dynamic changeName(String newValue) {
    final _$actionInfo = _$_AuthModelBaseActionController.startAction(
        name: '_AuthModelBase.changeName');
    try {
      return super.changeName(newValue);
    } finally {
      _$_AuthModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String newValue) {
    final _$actionInfo = _$_AuthModelBaseActionController.startAction(
        name: '_AuthModelBase.changeEmail');
    try {
      return super.changeEmail(newValue);
    } finally {
      _$_AuthModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePassword(String newValue) {
    final _$actionInfo = _$_AuthModelBaseActionController.startAction(
        name: '_AuthModelBase.changePassword');
    try {
      return super.changePassword(newValue);
    } finally {
      _$_AuthModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
password: ${password}
    ''';
  }
}
