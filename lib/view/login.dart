import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raisingchildrenrecord2/view/home.dart';
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
          child: LoginButton(),
        ),
      ),
    );
  }

  void _onLoginButtonTaped() {
  }
}

class LoginButton extends StatefulWidget {
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {

  LoginViewModel _viewModel;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: _onLoginButtonTapped,
      child: Text(
          'SIGN IN WITH GOOGLE',
          style: TextStyle(fontSize: 16.0),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _viewModel = Provider.of<LoginViewModel>(context);

    // この辺はLoginButtonではなく、LoginPageの方でやりたい。
    _viewModel.onLoginPageAppear.add(null);
    _viewModel.isSignIn.listen((bool signIn) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return MyHomePage();
            }
          )
      );
    });
    _viewModel.errorMessage.listen((String errorMessage) {
      // TODO: showToast
    });
  }

  void _onLoginButtonTapped() {
    _viewModel.onSignInButtonTapped.add(null);
  }
}