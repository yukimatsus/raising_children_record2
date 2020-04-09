import 'dart:async';

class LoginViewModel {
  // input
  final _onLoginPageAppearStreamController = StreamController<void>();
  final _onSignInButtonTappedStreamController = StreamController<void>();
  StreamSink<void> get onLoginPageAppear => _onLoginPageAppearStreamController.sink;
  StreamSink<void> get onSignInButtonTapped => _onSignInButtonTappedStreamController.sink;

  // output
  final _isSignInStreamController = StreamController<bool>();
  final _errorMessageStreamController = StreamController<String>();
  Stream<bool> get isSignIn => _isSignInStreamController.stream;
  Stream<String> get errorMessage => _errorMessageStreamController.stream;

  LoginViewModel() {
    _bindInputAndOutput();
  }

  void _bindInputAndOutput() {
  }
}