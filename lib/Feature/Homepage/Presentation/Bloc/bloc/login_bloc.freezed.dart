// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginCheck value)?  loginCheck,TResult Function( BottomSelectedItems value)?  bottomSelectedItems,TResult Function( ProfileDetails value)?  profileDetails,TResult Function( UserList value)?  userList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginCheck() when loginCheck != null:
return loginCheck(_that);case BottomSelectedItems() when bottomSelectedItems != null:
return bottomSelectedItems(_that);case ProfileDetails() when profileDetails != null:
return profileDetails(_that);case UserList() when userList != null:
return userList(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginCheck value)  loginCheck,required TResult Function( BottomSelectedItems value)  bottomSelectedItems,required TResult Function( ProfileDetails value)  profileDetails,required TResult Function( UserList value)  userList,}){
final _that = this;
switch (_that) {
case LoginCheck():
return loginCheck(_that);case BottomSelectedItems():
return bottomSelectedItems(_that);case ProfileDetails():
return profileDetails(_that);case UserList():
return userList(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginCheck value)?  loginCheck,TResult? Function( BottomSelectedItems value)?  bottomSelectedItems,TResult? Function( ProfileDetails value)?  profileDetails,TResult? Function( UserList value)?  userList,}){
final _that = this;
switch (_that) {
case LoginCheck() when loginCheck != null:
return loginCheck(_that);case BottomSelectedItems() when bottomSelectedItems != null:
return bottomSelectedItems(_that);case ProfileDetails() when profileDetails != null:
return profileDetails(_that);case UserList() when userList != null:
return userList(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( dynamic user,  dynamic pass)?  loginCheck,TResult Function( dynamic index)?  bottomSelectedItems,TResult Function()?  profileDetails,TResult Function()?  userList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginCheck() when loginCheck != null:
return loginCheck(_that.user,_that.pass);case BottomSelectedItems() when bottomSelectedItems != null:
return bottomSelectedItems(_that.index);case ProfileDetails() when profileDetails != null:
return profileDetails();case UserList() when userList != null:
return userList();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( dynamic user,  dynamic pass)  loginCheck,required TResult Function( dynamic index)  bottomSelectedItems,required TResult Function()  profileDetails,required TResult Function()  userList,}) {final _that = this;
switch (_that) {
case LoginCheck():
return loginCheck(_that.user,_that.pass);case BottomSelectedItems():
return bottomSelectedItems(_that.index);case ProfileDetails():
return profileDetails();case UserList():
return userList();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( dynamic user,  dynamic pass)?  loginCheck,TResult? Function( dynamic index)?  bottomSelectedItems,TResult? Function()?  profileDetails,TResult? Function()?  userList,}) {final _that = this;
switch (_that) {
case LoginCheck() when loginCheck != null:
return loginCheck(_that.user,_that.pass);case BottomSelectedItems() when bottomSelectedItems != null:
return bottomSelectedItems(_that.index);case ProfileDetails() when profileDetails != null:
return profileDetails();case UserList() when userList != null:
return userList();case _:
  return null;

}
}

}

/// @nodoc


class LoginCheck implements LoginEvent {
  const LoginCheck(this.user, this.pass);
  

 final  dynamic user;
 final  dynamic pass;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginCheckCopyWith<LoginCheck> get copyWith => _$LoginCheckCopyWithImpl<LoginCheck>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginCheck&&const DeepCollectionEquality().equals(other.user, user)&&const DeepCollectionEquality().equals(other.pass, pass));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(user),const DeepCollectionEquality().hash(pass));

@override
String toString() {
  return 'LoginEvent.loginCheck(user: $user, pass: $pass)';
}


}

/// @nodoc
abstract mixin class $LoginCheckCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginCheckCopyWith(LoginCheck value, $Res Function(LoginCheck) _then) = _$LoginCheckCopyWithImpl;
@useResult
$Res call({
 dynamic user, dynamic pass
});




}
/// @nodoc
class _$LoginCheckCopyWithImpl<$Res>
    implements $LoginCheckCopyWith<$Res> {
  _$LoginCheckCopyWithImpl(this._self, this._then);

  final LoginCheck _self;
  final $Res Function(LoginCheck) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? pass = freezed,}) {
  return _then(LoginCheck(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as dynamic,freezed == pass ? _self.pass : pass // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class BottomSelectedItems implements LoginEvent {
  const BottomSelectedItems(this.index);
  

 final  dynamic index;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BottomSelectedItemsCopyWith<BottomSelectedItems> get copyWith => _$BottomSelectedItemsCopyWithImpl<BottomSelectedItems>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BottomSelectedItems&&const DeepCollectionEquality().equals(other.index, index));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(index));

@override
String toString() {
  return 'LoginEvent.bottomSelectedItems(index: $index)';
}


}

/// @nodoc
abstract mixin class $BottomSelectedItemsCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $BottomSelectedItemsCopyWith(BottomSelectedItems value, $Res Function(BottomSelectedItems) _then) = _$BottomSelectedItemsCopyWithImpl;
@useResult
$Res call({
 dynamic index
});




}
/// @nodoc
class _$BottomSelectedItemsCopyWithImpl<$Res>
    implements $BottomSelectedItemsCopyWith<$Res> {
  _$BottomSelectedItemsCopyWithImpl(this._self, this._then);

  final BottomSelectedItems _self;
  final $Res Function(BottomSelectedItems) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = freezed,}) {
  return _then(BottomSelectedItems(
freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class ProfileDetails implements LoginEvent {
  const ProfileDetails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDetails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.profileDetails()';
}


}




/// @nodoc


class UserList implements LoginEvent {
  const UserList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.userList()';
}


}




/// @nodoc
mixin _$LoginState {

 bool get isLoading; List get data; List get Profiledata; String? get errorMessage; int get selectedIndex; List<Comment> get Datalist;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.Profiledata, Profiledata)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex)&&const DeepCollectionEquality().equals(other.Datalist, Datalist));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(Profiledata),errorMessage,selectedIndex,const DeepCollectionEquality().hash(Datalist));

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, data: $data, Profiledata: $Profiledata, errorMessage: $errorMessage, selectedIndex: $selectedIndex, Datalist: $Datalist)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List data, List Profiledata, String? errorMessage, int selectedIndex, List<Comment> Datalist
});




}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? data = null,Object? Profiledata = null,Object? errorMessage = freezed,Object? selectedIndex = null,Object? Datalist = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List,Profiledata: null == Profiledata ? _self.Profiledata : Profiledata // ignore: cast_nullable_to_non_nullable
as List,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,Datalist: null == Datalist ? _self.Datalist : Datalist // ignore: cast_nullable_to_non_nullable
as List<Comment>,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List data,  List Profiledata,  String? errorMessage,  int selectedIndex,  List<Comment> Datalist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.isLoading,_that.data,_that.Profiledata,_that.errorMessage,_that.selectedIndex,_that.Datalist);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List data,  List Profiledata,  String? errorMessage,  int selectedIndex,  List<Comment> Datalist)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.isLoading,_that.data,_that.Profiledata,_that.errorMessage,_that.selectedIndex,_that.Datalist);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List data,  List Profiledata,  String? errorMessage,  int selectedIndex,  List<Comment> Datalist)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.isLoading,_that.data,_that.Profiledata,_that.errorMessage,_that.selectedIndex,_that.Datalist);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
   _LoginState({this.isLoading = false, final  List data = const [], final  List Profiledata = const [], this.errorMessage, this.selectedIndex = 0, final  List<Comment> Datalist = const []}): _data = data,_Profiledata = Profiledata,_Datalist = Datalist;
  

@override@JsonKey() final  bool isLoading;
 final  List _data;
@override@JsonKey() List get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

 final  List _Profiledata;
@override@JsonKey() List get Profiledata {
  if (_Profiledata is EqualUnmodifiableListView) return _Profiledata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_Profiledata);
}

@override final  String? errorMessage;
@override@JsonKey() final  int selectedIndex;
 final  List<Comment> _Datalist;
@override@JsonKey() List<Comment> get Datalist {
  if (_Datalist is EqualUnmodifiableListView) return _Datalist;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_Datalist);
}


/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._Profiledata, _Profiledata)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex)&&const DeepCollectionEquality().equals(other._Datalist, _Datalist));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_Profiledata),errorMessage,selectedIndex,const DeepCollectionEquality().hash(_Datalist));

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, data: $data, Profiledata: $Profiledata, errorMessage: $errorMessage, selectedIndex: $selectedIndex, Datalist: $Datalist)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List data, List Profiledata, String? errorMessage, int selectedIndex, List<Comment> Datalist
});




}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? data = null,Object? Profiledata = null,Object? errorMessage = freezed,Object? selectedIndex = null,Object? Datalist = null,}) {
  return _then(_LoginState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List,Profiledata: null == Profiledata ? _self._Profiledata : Profiledata // ignore: cast_nullable_to_non_nullable
as List,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,Datalist: null == Datalist ? _self._Datalist : Datalist // ignore: cast_nullable_to_non_nullable
as List<Comment>,
  ));
}


}

// dart format on
