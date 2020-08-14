import 'package:despesasmod/app/auth/components/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.money_off,
                  size: 32,
                  color: Colors.indigo,
                ),
                Text(
                  'Despesas Modular',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Observer(
                      builder: (_) {
                        return textField(
                            obscure: false,
                            onChanged: controller.changeEmail,
                            errorText: controller.validateEmail,
                            hint: 'Email');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Observer(
                      builder: (_) {
                        return textField(
                          obscure: true,
                          hint: 'Senha',
                          onChanged: controller.changePassword,
                          errorText: controller.validatePassword,
                        );
                      },
                    ),
                  ),
                  Observer(
                    builder: (_) {
                      return RaisedButton(
                        onPressed:
                            controller.validateForm() ? controller.login : null,
                        elevation: 5,
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueci minha Senha',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: controller.register,
                    child: Text(
                      'Registrar-se',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
