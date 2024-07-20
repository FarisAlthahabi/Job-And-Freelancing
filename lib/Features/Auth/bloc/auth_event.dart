// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

// class GetFirstNameEvent extends AuthEvent {
//   final String firstName;
//   GetFirstNameEvent({
//     required this.firstName,
//   });
// }

// class GetLastNameEvent extends AuthEvent {
//   final String lastName;
//   GetLastNameEvent({
//     required this.lastName,
//   });
// }

// class GetEmailEvent extends AuthEvent {
//   final String email;
//   GetEmailEvent({
//     required this.email,
//   });
// }

// class GetPasswordEvent extends AuthEvent {
//   final String password;
//   GetPasswordEvent({
//     required this.password,
//   });
//}

class RegisterEvent extends AuthEvent {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  RegisterEvent({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });
 
}

class VerifyEvent extends AuthEvent {
  final String email;
  final String token;
  VerifyEvent({
    required this.email,
    required this.token,
  });
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;
  LoginEvent({
    required this.email,
    required this.password,
  });
}

class LogoutEvent extends AuthEvent {}

class ForgetPasswordEvent extends AuthEvent {
  final String email;
  ForgetPasswordEvent({
    required this.email,
  });
}

class CheckCodeEvent extends AuthEvent {
  final String token;
  CheckCodeEvent({
    required this.token,
  });
}

class ResetPasswordEvent extends AuthEvent {
  final String password;
  final String token;
  ResetPasswordEvent({
    required this.password,
    required this.token,
  });
}

class LoginWithGoogleEvent extends AuthEvent {}
