part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginCheck(user, pass) = LoginCheck;
  const factory LoginEvent.bottomSelectedItems(index) = BottomSelectedItems;
  const factory LoginEvent.profileDetails() = ProfileDetails;
  const factory LoginEvent.userList() = UserList;
}
