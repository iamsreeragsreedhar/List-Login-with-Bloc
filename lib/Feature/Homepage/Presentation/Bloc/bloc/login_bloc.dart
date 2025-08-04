import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/Feature/Homepage/Data/Models/DataListModel.dart';
import 'package:flutter_application_1/Feature/Homepage/Domain/Repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final HomepageRepositories repository;
  LoginBloc(this.repository) : super(LoginState()) {
    on<LoginCheck>(_OnLoginCheck);
    on<BottomSelectedItems>(_SelectedItems);
    on<ProfileDetails>(_Profiledetails);
    on<UserList>(_userList);
  }
  List LoginData = [];
  List ProfileList = [];
  _OnLoginCheck(LoginCheck event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      LoginData = await repository.logincheck(event.user, event.pass);
      ProfileList = LoginData;
      // print("Login Data: $LoginData");
      // print("ProfileList: $ProfileList");

      emit(state.copyWith(isLoading: false, data: LoginData));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      print("Error: $e");
    }
  }

  _SelectedItems(BottomSelectedItems event, Emitter<LoginState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }

  _Profiledetails(ProfileDetails event, Emitter<LoginState> emit) {
    emit(state.copyWith(Profiledata: ProfileList));
    // print("Profile Details: ${LoginData}");
  }

  _userList(UserList event, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final commentsList = await repository.fetchComments();
      emit(state.copyWith(isLoading: false, Datalist: commentsList));
      // print("User List: $userList");
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      // print("Error: $e");
    }
  }
}
