import 'package:bloc/bloc.dart';
import 'package:empco/data/model/Base_Model.dart';
import 'package:empco/data/model/User_model/User_Chaeck_Code_model.dart';
import 'package:empco/data/model/User_model/User_Forget_Password_model.dart';
import 'package:empco/data/model/User_model/User_Login_Model.dart';
import 'package:empco/data/model/User_model/User_Model.dart';
import 'package:empco/data/model/User_model/User_Reset_Password_model.dart';
import 'package:empco/data/model/User_model/User_Verify_Model.dart';
import 'package:empco/data/service/Auth_Service.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegisterEvent>((event, emit)async {
      emit(await LoadingState());
      UserModel user = UserModel(
          first_name: event.first_name,
          last_name: event.last_name,
          email: event.email,
          password: event.password);
      dynamic data = await AuthService().Register(user);
      if (data is TokenModel) {
        emit(SuccessToRegisterState(token: data));
      } else {
        emit(FailedToRegisterState(error: data));
      }
    });
    on<VerifyEvent>((event, emit)async {
      emit(LoadingState());
      UserVerifyModel userVerify =
          UserVerifyModel(email: event.email, token: event.token);
      dynamic data = await AuthService().Verify(userVerify);
      if (data is MessageModel) {
        emit(SuccessToVerifyState(message: data));
      } else {
        emit(FailedToVerifyState(error: data));
      }
    });

    on<LoginEvent>((event, emit) async{
      emit( LoadingState());
      UserLoginModel userLogin =
          UserLoginModel(email: event.email, password: event.password);
      dynamic data = await AuthService().Login(userLogin);
      if (data is TokenModel) {
        emit(SuccessToLoginState(token: data));
      } else {
        emit(FailedToLoginState(error: data));
      }
    });

    on<LogoutEvent>((event, emit) async{
      emit( LoadingState());
      dynamic data =await  AuthService().Logout();
      if (data is MessageModel) {
        emit(SuccessToLogoutState(message: data));
      } else {
        emit(FailedToLogoutState(error: data));
      }
    });

    on<ForgetPasswordEvent>((event, emit) async{
      emit( LoadingState());
      UserForgetPasswordModel userForgetPassword =
          UserForgetPasswordModel(email: event.email);
      dynamic data = await AuthService().ForgetPassword(userForgetPassword);
      if (data is MessageModel) {
        emit(SuccessToForgetPasswordState(message: data));
      } else {
        emit(FailedToForgetPasswordState(error: data));
      }
    });

    on<CheckCodeEvent>((event, emit)async {
      emit( LoadingState());
      TokenModel token = TokenModel(token: event.token);
      dynamic data =await  AuthService().CheckCode(token);
      if (data is UserCheckCodeModel) {
        emit(SuccessToCheckCodeState(userCheckCode: data));
      } else {
        emit(FailedToCheckCodeState(error: data));
      }
    });

    on<ResetPasswordEvent>((event, emit)async {
      emit( LoadingState());
      UserResetPasswordModel userResetPassword =
          UserResetPasswordModel(password: event.password, token: event.token);
      dynamic data =await AuthService().ResetPassword(userResetPassword);
      if (data is MessageModel) {
        emit(SuccessToResetPasswordState(message: data));
      } else {
        emit(FailedToResetPasswordState(error: data));
      }
    });
  }
}
