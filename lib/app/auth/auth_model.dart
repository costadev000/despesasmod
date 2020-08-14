import 'package:mobx/mobx.dart';
part 'auth_model.g.dart';

class AuthModel = _AuthModelBase with _$AuthModel;

abstract class _AuthModelBase with Store {
  @observable
  String name;

  @action
  changeName(String newValue) => name = newValue;

  @observable
  String email;

  @action
  changeEmail(String newValue) => email = newValue;

  @observable
  String password;

  @action
  changePassword(String newValue) => password = newValue;

  _AuthModelBase({this.name = '', this.email = '', this.password = ''});
}
