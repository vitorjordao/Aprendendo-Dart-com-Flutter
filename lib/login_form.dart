export 'package:appbasica/login_form.dart';
import 'package:appbasica/list_manipulation_form.dart';
import 'package:appbasica/main.dart';
import 'package:flutter/material.dart';
import 'package:appbasica/form_itens.dart';

StatelessWidget login = Base(
      name: "Login", 
      content: LoginForm(),
    );

@immutable
class LoginForm extends StatelessWidget {

  final FormItens _formItens = FormItens();

  @override
  Widget build(BuildContext context) {
    return Container(
              child: Column(
                children: <Widget>[
                  _formItens.textField("Login"),
                  _formItens.textField("Senha"),
                  Spacer(),
                  _formItens.buttonField("Logar", (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => 
                                          listManipulation
                                        ),
                    );
                  }),
                  _formItens.buttonField("Registrar", (){})
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              padding: EdgeInsets.all(30.0),
            );
  }
}