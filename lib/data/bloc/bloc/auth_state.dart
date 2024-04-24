// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

class LoadingState extends AuthState {}

// register.......................................
class SuccessToRegisterState extends AuthState {
  TokenModel token;
  SuccessToRegisterState({
    required this.token,
  });
}

class FailedToRegisterState extends AuthState {
  ErrorModel error;
  FailedToRegisterState({
    required this.error,
  });
}

// Verify.......................................
class SuccessToVerifyState extends AuthState {
  MessageModel message;
  SuccessToVerifyState({
    required this.message,
  });
}

class FailedToVerifyState extends AuthState {
  ErrorModel error;
  FailedToVerifyState({
    required this.error,
  });
}

// Login.......................................
class SuccessToLoginState extends AuthState {
  TokenModel token;
  SuccessToLoginState({
    required this.token,
  });
}

class FailedToLoginState extends AuthState {
  ErrorModel error;
  FailedToLoginState({
    required this.error,
  });
}

// Logout.......................................
class SuccessToLogoutState extends AuthState {
  MessageModel message;
  SuccessToLogoutState({
    required this.message,
  });
}

class FailedToLogoutState extends AuthState {
  ErrorModel error;
  FailedToLogoutState({
    required this.error,
  });
}

// Forget password.......................................
class SuccessToForgetPasswordState extends AuthState {
  MessageModel message;
  SuccessToForgetPasswordState({
    required this.message,
  });
}

class FailedToForgetPasswordState extends AuthState {
  ErrorModel error;
  FailedToForgetPasswordState({
    required this.error,
  });
}

// Check code.......................................
class SuccessToCheckCodeState extends AuthState {
  UserCheckCodeModel userCheckCode;
  SuccessToCheckCodeState({
    required this.userCheckCode,
  });
}

class FailedToCheckCodeState extends AuthState {
  ErrorModel error;
  FailedToCheckCodeState({
    required this.error,
  });
}

// Reset password.......................................
class SuccessToResetPasswordState extends AuthState {
  MessageModel message;
  SuccessToResetPasswordState({
    required this.message,
  });
}

class FailedToResetPasswordState extends AuthState {
  ErrorModel error;
  FailedToResetPasswordState({
    required this.error,
  });
}
