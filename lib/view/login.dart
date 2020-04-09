import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raisingchildrenrecord2/viewmodel/login_viewmodel.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Provider<LoginViewModel>.value(
      value: LoginViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login')
        ),
        body: Center(
          child: FlatButton(
            onPressed: _onLoginButtonTaped,
            child: Text(
              'SIGN IN WITH GOOGLE',
              style: TextStyle(fontSize: 16.0)
            )
          )
        )
      ),
    );
  }

  void _onLoginButtonTaped() {
    // TODO: login
  }
}
