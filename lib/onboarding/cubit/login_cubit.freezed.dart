// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginFormStateTearOff {
  const _$LoginFormStateTearOff();

  _LoginFormState data(
      {required String password,
      String? passwordError = null,
      required String email,
      String? emailError = null,
      required bool isPasswordObscured,
      required bool isFormValid}) {
    return _LoginFormState(
      password: password,
      passwordError: passwordError,
      email: email,
      emailError: emailError,
      isPasswordObscured: isPasswordObscured,
      isFormValid: isFormValid,
    );
  }
}

/// @nodoc
const $LoginFormState = _$LoginFormStateTearOff();

/// @nodoc
mixin _$LoginFormState {
  String get password => throw _privateConstructorUsedError;
  String? get passwordError => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get emailError => throw _privateConstructorUsedError;
  bool get isPasswordObscured => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String password,
            String? passwordError,
            String email,
            String? emailError,
            bool isPasswordObscured,
            bool isFormValid)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String? passwordError, String email,
            String? emailError, bool isPasswordObscured, bool isFormValid)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginFormState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginFormState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res>;
  $Res call(
      {String password,
      String? passwordError,
      String email,
      String? emailError,
      bool isPasswordObscured,
      bool isFormValid});
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  final LoginFormState _value;
  // ignore: unused_field
  final $Res Function(LoginFormState) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? passwordError = freezed,
    Object? email = freezed,
    Object? emailError = freezed,
    Object? isPasswordObscured = freezed,
    Object? isFormValid = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed ? _value.password : password as String,
      passwordError: passwordError == freezed
          ? _value.passwordError
          : passwordError as String?,
      email: email == freezed ? _value.email : email as String,
      emailError:
          emailError == freezed ? _value.emailError : emailError as String?,
      isPasswordObscured: isPasswordObscured == freezed
          ? _value.isPasswordObscured
          : isPasswordObscured as bool,
      isFormValid:
          isFormValid == freezed ? _value.isFormValid : isFormValid as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginFormStateCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$LoginFormStateCopyWith(
          _LoginFormState value, $Res Function(_LoginFormState) then) =
      __$LoginFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String password,
      String? passwordError,
      String email,
      String? emailError,
      bool isPasswordObscured,
      bool isFormValid});
}

/// @nodoc
class __$LoginFormStateCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$LoginFormStateCopyWith<$Res> {
  __$LoginFormStateCopyWithImpl(
      _LoginFormState _value, $Res Function(_LoginFormState) _then)
      : super(_value, (v) => _then(v as _LoginFormState));

  @override
  _LoginFormState get _value => super._value as _LoginFormState;

  @override
  $Res call({
    Object? password = freezed,
    Object? passwordError = freezed,
    Object? email = freezed,
    Object? emailError = freezed,
    Object? isPasswordObscured = freezed,
    Object? isFormValid = freezed,
  }) {
    return _then(_LoginFormState(
      password: password == freezed ? _value.password : password as String,
      passwordError: passwordError == freezed
          ? _value.passwordError
          : passwordError as String?,
      email: email == freezed ? _value.email : email as String,
      emailError:
          emailError == freezed ? _value.emailError : emailError as String?,
      isPasswordObscured: isPasswordObscured == freezed
          ? _value.isPasswordObscured
          : isPasswordObscured as bool,
      isFormValid:
          isFormValid == freezed ? _value.isFormValid : isFormValid as bool,
    ));
  }
}

/// @nodoc
class _$_LoginFormState
    with DiagnosticableTreeMixin
    implements _LoginFormState {
  const _$_LoginFormState(
      {required this.password,
      this.passwordError = null,
      required this.email,
      this.emailError = null,
      required this.isPasswordObscured,
      required this.isFormValid});

  @override
  final String password;
  @JsonKey(defaultValue: null)
  @override
  final String? passwordError;
  @override
  final String email;
  @JsonKey(defaultValue: null)
  @override
  final String? emailError;
  @override
  final bool isPasswordObscured;
  @override
  final bool isFormValid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFormState.data(password: $password, passwordError: $passwordError, email: $email, emailError: $emailError, isPasswordObscured: $isPasswordObscured, isFormValid: $isFormValid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginFormState.data'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('passwordError', passwordError))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('emailError', emailError))
      ..add(DiagnosticsProperty('isPasswordObscured', isPasswordObscured))
      ..add(DiagnosticsProperty('isFormValid', isFormValid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginFormState &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordError, passwordError) ||
                const DeepCollectionEquality()
                    .equals(other.passwordError, passwordError)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailError, emailError) ||
                const DeepCollectionEquality()
                    .equals(other.emailError, emailError)) &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordObscured, isPasswordObscured)) &&
            (identical(other.isFormValid, isFormValid) ||
                const DeepCollectionEquality()
                    .equals(other.isFormValid, isFormValid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordError) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailError) ^
      const DeepCollectionEquality().hash(isPasswordObscured) ^
      const DeepCollectionEquality().hash(isFormValid);

  @JsonKey(ignore: true)
  @override
  _$LoginFormStateCopyWith<_LoginFormState> get copyWith =>
      __$LoginFormStateCopyWithImpl<_LoginFormState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String password,
            String? passwordError,
            String email,
            String? emailError,
            bool isPasswordObscured,
            bool isFormValid)
        data,
  }) {
    return data(password, passwordError, email, emailError, isPasswordObscured,
        isFormValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String? passwordError, String email,
            String? emailError, bool isPasswordObscured, bool isFormValid)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(password, passwordError, email, emailError,
          isPasswordObscured, isFormValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginFormState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginFormState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
      {required String password,
      String? passwordError,
      required String email,
      String? emailError,
      required bool isPasswordObscured,
      required bool isFormValid}) = _$_LoginFormState;

  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String? get passwordError => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String? get emailError => throw _privateConstructorUsedError;
  @override
  bool get isPasswordObscured => throw _privateConstructorUsedError;
  @override
  bool get isFormValid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginFormStateCopyWith<_LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _Initial initial({required LoginFormState form}) {
    return _Initial(
      form: form,
    );
  }

  _Loading loading({required LoginFormState form}) {
    return _Loading(
      form: form,
    );
  }

  _Finished finished({required LoginFormState form}) {
    return _Finished(
      form: form,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  LoginFormState get form => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginFormState form) initial,
    required TResult Function(LoginFormState form) loading,
    required TResult Function(LoginFormState form) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginFormState form)? initial,
    TResult Function(LoginFormState form)? loading,
    TResult Function(LoginFormState form)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({LoginFormState form});

  $LoginFormStateCopyWith<$Res> get form;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed ? _value.form : form as LoginFormState,
    ));
  }

  @override
  $LoginFormStateCopyWith<$Res> get form {
    return $LoginFormStateCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({LoginFormState form});

  @override
  $LoginFormStateCopyWith<$Res> get form;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_Initial(
      form: form == freezed ? _value.form : form as LoginFormState,
    ));
  }
}

/// @nodoc
class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial({required this.form});

  @override
  final LoginFormState form;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.initial(form: $form)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.initial'))
      ..add(DiagnosticsProperty('form', form));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.form, form) ||
                const DeepCollectionEquality().equals(other.form, form)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(form);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginFormState form) initial,
    required TResult Function(LoginFormState form) loading,
    required TResult Function(LoginFormState form) finished,
  }) {
    return initial(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginFormState form)? initial,
    TResult Function(LoginFormState form)? loading,
    TResult Function(LoginFormState form)? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Finished value) finished,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial({required LoginFormState form}) = _$_Initial;

  @override
  LoginFormState get form => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({LoginFormState form});

  @override
  $LoginFormStateCopyWith<$Res> get form;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_Loading(
      form: form == freezed ? _value.form : form as LoginFormState,
    ));
  }
}

/// @nodoc
class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading({required this.form});

  @override
  final LoginFormState form;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.loading(form: $form)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.loading'))
      ..add(DiagnosticsProperty('form', form));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.form, form) ||
                const DeepCollectionEquality().equals(other.form, form)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(form);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginFormState form) initial,
    required TResult Function(LoginFormState form) loading,
    required TResult Function(LoginFormState form) finished,
  }) {
    return loading(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginFormState form)? initial,
    TResult Function(LoginFormState form)? loading,
    TResult Function(LoginFormState form)? finished,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Finished value) finished,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading({required LoginFormState form}) = _$_Loading;

  @override
  LoginFormState get form => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishedCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$FinishedCopyWith(_Finished value, $Res Function(_Finished) then) =
      __$FinishedCopyWithImpl<$Res>;
  @override
  $Res call({LoginFormState form});

  @override
  $LoginFormStateCopyWith<$Res> get form;
}

/// @nodoc
class __$FinishedCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$FinishedCopyWith<$Res> {
  __$FinishedCopyWithImpl(_Finished _value, $Res Function(_Finished) _then)
      : super(_value, (v) => _then(v as _Finished));

  @override
  _Finished get _value => super._value as _Finished;

  @override
  $Res call({
    Object? form = freezed,
  }) {
    return _then(_Finished(
      form: form == freezed ? _value.form : form as LoginFormState,
    ));
  }
}

/// @nodoc
class _$_Finished with DiagnosticableTreeMixin implements _Finished {
  const _$_Finished({required this.form});

  @override
  final LoginFormState form;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.finished(form: $form)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.finished'))
      ..add(DiagnosticsProperty('form', form));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Finished &&
            (identical(other.form, form) ||
                const DeepCollectionEquality().equals(other.form, form)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(form);

  @JsonKey(ignore: true)
  @override
  _$FinishedCopyWith<_Finished> get copyWith =>
      __$FinishedCopyWithImpl<_Finished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginFormState form) initial,
    required TResult Function(LoginFormState form) loading,
    required TResult Function(LoginFormState form) finished,
  }) {
    return finished(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginFormState form)? initial,
    TResult Function(LoginFormState form)? loading,
    TResult Function(LoginFormState form)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements LoginState {
  const factory _Finished({required LoginFormState form}) = _$_Finished;

  @override
  LoginFormState get form => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FinishedCopyWith<_Finished> get copyWith =>
      throw _privateConstructorUsedError;
}
