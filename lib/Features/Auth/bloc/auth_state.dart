part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

class LoadingState extends AuthState {}

// register.......................................
class SuccessToRegisterState extends AuthState {
  final TokenModel token;
  SuccessToRegisterState({
    required this.token,
  });
}

class FailedToRegisterState extends AuthState {
  final ErrorModel error;
  FailedToRegisterState({
    required this.error,
  });
}

// Verify.......................................
class SuccessToVerifyState extends AuthState {
  final MessageModel message;
  SuccessToVerifyState({
    required this.message,
  });
}

class FailedToVerifyState extends AuthState {
  final ErrorModel error;
  FailedToVerifyState({
    required this.error,
  });
}

//Login with google...............................
class SuccessToLoginWithGoogleState extends AuthState {
  final TokenModel token;
  SuccessToLoginWithGoogleState({
    required this.token,
  });
}

class FailedToLoginWithGoogleState extends AuthState {
  final ErrorModel error;
  FailedToLoginWithGoogleState({
    required this.error,
  });
}
// Login.......................................
class SuccessToLoginState extends AuthState {
  final TokenModel token;
  SuccessToLoginState({
    required this.token,
  });
}

class FailedToLoginState extends AuthState {
  final ErrorModel error;
  FailedToLoginState({
    required this.error,
  });
}

// Logout.......................................
class SuccessToLogoutState extends AuthState {
  final MessageModel message;
  SuccessToLogoutState({
    required this.message,
  });
}

class FailedToLogoutState extends AuthState {
  final ErrorModel error;
  FailedToLogoutState({
    required this.error,
  });
}

// Forget password.......................................
class SuccessToForgetPasswordState extends AuthState {
  final MessageModel message;
  SuccessToForgetPasswordState({
    required this.message,
  });
}

class FailedToForgetPasswordState extends AuthState {
  final ErrorModel error;
  FailedToForgetPasswordState({
    required this.error,
  });
}

// Check code.......................................
class SuccessToCheckCodeState extends AuthState {
 final UserCheckCodeModel userCheckCode;
  SuccessToCheckCodeState({
    required this.userCheckCode,
  });
}

class FailedToCheckCodeState extends AuthState {
  final ErrorModel error;
  FailedToCheckCodeState({
    required this.error,
  });
}

// Reset password.......................................
class SuccessToResetPasswordState extends AuthState {
  final MessageModel message;
  SuccessToResetPasswordState({
    required this.message,
  });
}

class FailedToResetPasswordState extends AuthState {
  final ErrorModel error;
  FailedToResetPasswordState({
    required this.error,
  });
}
