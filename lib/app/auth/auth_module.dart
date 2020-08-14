import 'package:despesasmod/app/auth/register/register_controller.dart';
import 'package:despesasmod/app/auth/login/login_controller.dart';
import 'package:despesasmod/app/auth/login/login_page.dart';
import 'package:despesasmod/app/auth/register/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterController()),
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LoginPage()),
        Router('/register',
            child: (_, args) => RegisterPage(),
            transition: TransitionType.rightToLeft),
      ];

  static Inject get to => Inject<AuthModule>.of();
}
