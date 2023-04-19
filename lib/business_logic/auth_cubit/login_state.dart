part of 'login_cubit.dart';
@immutable
abstract class LoginState {
  const LoginState();
}

class LoginInitial extends LoginState {
  const LoginInitial();
}

class LoginLoading extends LoginState {
  const LoginLoading();
}

class LoginCompleted extends LoginState {
  final bool login;

  const LoginCompleted(this.login);
}

class LoginError extends LoginState {
  final String message;

  const LoginError(this.message);
}

