part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState({
    @Default(false) bool isLoading,
    @Default([]) List data,
    @Default([]) List Profiledata,
    String? errorMessage,
    @Default(0) int selectedIndex,
    @Default([]) List<Comment> Datalist,
  }) = _LoginState;
}
