import 'package:despesasmod/app/auth/components/textField.dart';
import 'package:despesasmod/app/auth/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Registrar-se"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Novo usuário',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Observer(
                      builder: (_) {
                        return textField(
                            obscure: false,
                            onChanged: controller.auth.changeName,
                            errorText: controller.validateName,
                            hint: 'Nome');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Observer(
                      builder: (_) {
                        return textField(
                            obscure: false,
                            onChanged: controller.auth.changeEmail,
                            errorText: controller.validateEmail,
                            hint: 'Email');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Observer(
                      builder: (_) {
                        return textField(
                            obscure: false,
                            onChanged: controller.confirmEmail,
                            errorText: controller.validateEmailConf,
                            hint: 'Confirmar Email');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Observer(
                      builder: (_) {
                        return textField(
                            obscure: true,
                            onChanged: controller.auth.changePassword,
                            errorText: controller.validatePassword,
                            hint: 'Senha');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Observer(
                      builder: (_) {
                        return textField(
                            obscure: true,
                            onChanged: controller.confirmPassword,
                            errorText: controller.validatePassConf,
                            hint: 'Confirmar Senha');
                      },
                    ),
                  ),
                  Observer(
                    builder: (_) {
                      return RaisedButton(
                        onPressed: controller.validateForm()
                            ? controller.register
                            : null,
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
            )
          ],
        ),
      ),
    );
  }
}
