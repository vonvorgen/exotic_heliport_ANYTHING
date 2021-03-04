// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Loading loading(int tabIndex) {
    return _Loading(
      tabIndex,
    );
  }

  _Success success(int tabIndex,
      {required List<GiftCard> cards, required List<GiftCardSku> cartSkus}) {
    return _Success(
      tabIndex,
      cards: cards,
      cartSkus: cartSkus,
    );
  }

  _Fail fail(int tabIndex) {
    return _Fail(
      tabIndex,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  int get tabIndex => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) loading,
    required TResult Function(
            int tabIndex, List<GiftCard> cards, List<GiftCardSku> cartSkus)
        success,
    required TResult Function(int tabIndex) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? loading,
    TResult Function(
            int tabIndex, List<GiftCard> cards, List<GiftCardSku> cartSkus)?
        success,
    TResult Function(int tabIndex)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Fail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({int tabIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      tabIndex: tabIndex == freezed ? _value.tabIndex : tabIndex as int,
    ));
  }
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({int tabIndex});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_Loading(
      tabIndex == freezed ? _value.tabIndex : tabIndex as int,
    ));
  }
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'HomeState.loading(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.tabIndex, tabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.tabIndex, tabIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tabIndex);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) loading,
    required TResult Function(
            int tabIndex, List<GiftCard> cards, List<GiftCardSku> cartSkus)
        success,
    required TResult Function(int tabIndex) fail,
  }) {
    return loading(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? loading,
    TResult Function(
            int tabIndex, List<GiftCard> cards, List<GiftCardSku> cartSkus)?
        success,
    TResult Function(int tabIndex)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Fail value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading(int tabIndex) = _$_Loading;

  @override
  int get tabIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  @override
  $Res call({int tabIndex, List<GiftCard> cards, List<GiftCardSku> cartSkus});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? tabIndex = freezed,
    Object? cards = freezed,
    Object? cartSkus = freezed,
  }) {
    return _then(_Success(
      tabIndex == freezed ? _value.tabIndex : tabIndex as int,
      cards: cards == freezed ? _value.cards : cards as List<GiftCard>,
      cartSkus:
          cartSkus == freezed ? _value.cartSkus : cartSkus as List<GiftCardSku>,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.tabIndex,
      {required this.cards, required this.cartSkus});

  @override
  final int tabIndex;
  @override
  final List<GiftCard> cards;
  @override
  final List<GiftCardSku> cartSkus;

  @override
  String toString() {
    return 'HomeState.success(tabIndex: $tabIndex, cards: $cards, cartSkus: $cartSkus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.tabIndex, tabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.tabIndex, tabIndex)) &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.cartSkus, cartSkus) ||
                const DeepCollectionEquality()
                    .equals(other.cartSkus, cartSkus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tabIndex) ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(cartSkus);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) loading,
    required TResult Function(
            int tabIndex, List<GiftCard> cards, List<GiftCardSku> cartSkus)
        success,
    required TResult Function(int tabIndex) fail,
  }) {
    return success(tabIndex, cards, cartSkus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? loading,
    TResult Function(
            int tabIndex, List<GiftCard> cards, List<GiftCardSku> cartSkus)?
        success,
    TResult Function(int tabIndex)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tabIndex, cards, cartSkus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Fail value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements HomeState {
  const factory _Success(int tabIndex,
      {required List<GiftCard> cards,
      required List<GiftCardSku> cartSkus}) = _$_Success;

  @override
  int get tabIndex => throw _privateConstructorUsedError;
  List<GiftCard> get cards => throw _privateConstructorUsedError;
  List<GiftCardSku> get cartSkus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$FailCopyWith(_Fail value, $Res Function(_Fail) then) =
      __$FailCopyWithImpl<$Res>;
  @override
  $Res call({int tabIndex});
}

/// @nodoc
class __$FailCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$FailCopyWith<$Res> {
  __$FailCopyWithImpl(_Fail _value, $Res Function(_Fail) _then)
      : super(_value, (v) => _then(v as _Fail));

  @override
  _Fail get _value => super._value as _Fail;

  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_Fail(
      tabIndex == freezed ? _value.tabIndex : tabIndex as int,
    ));
  }
}

/// @nodoc
class _$_Fail implements _Fail {
  const _$_Fail(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'HomeState.fail(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fail &&
            (identical(other.tabIndex, tabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.tabIndex, tabIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tabIndex);

  @JsonKey(ignore: true)
  @override
  _$FailCopyWith<_Fail> get copyWith =>
      __$FailCopyWithImpl<_Fail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) loading,
    required TResult Function(
            int tabIndex, List<GiftCard> cards, List<GiftCardSku> cartSkus)
        success,
    required TResult Function(int tabIndex) fail,
  }) {
    return fail(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? loading,
    TResult Function(
            int tabIndex, List<GiftCard> cards, List<GiftCardSku> cartSkus)?
        success,
    TResult Function(int tabIndex)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Fail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Fail implements HomeState {
  const factory _Fail(int tabIndex) = _$_Fail;

  @override
  int get tabIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailCopyWith<_Fail> get copyWith => throw _privateConstructorUsedError;
}
