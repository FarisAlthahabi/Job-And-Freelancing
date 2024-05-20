// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class RegisterEvent extends AuthEvent {
  String first_name;
  String last_name;
  String email;
  String password;
  RegisterEvent({
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.password,
  });
}

class VerifyEvent extends AuthEvent {
  String email;
  String token;
  VerifyEvent({
    required this.email,
    required this.token,
  });
}

class LoginEvent extends AuthEvent {
  String email;
  String password;
  LoginEvent({
    required this.email,
    required this.password,
  });
}

class LogoutEvent extends AuthEvent {}

class ForgetPasswordEvent extends AuthEvent {
  String email;
  ForgetPasswordEvent({
    required this.email,
  });
}

class CheckCodeEvent extends AuthEvent {
  String token;
  CheckCodeEvent({
    required this.token,
  });
}

class ResetPasswordEvent extends AuthEvent {
  String password;
  String token;
  ResetPasswordEvent({
    required this.password,
    required this.token,
  });
}
class LoginWithGoogleEvent extends AuthEvent{}
