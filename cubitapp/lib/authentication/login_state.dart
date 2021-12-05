part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String username;
  final String email;
  final String password;
  final String number;

  LoginSuccess(this.username, this.email, this.password, this.number);

}
class LoginFail extends LoginState {}
