// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gift_card_sku.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GiftCardSkuTearOff {
  const _$GiftCardSkuTearOff();

  _Data data(
      {required GiftCard card,
      required Denomination denomination,
      required int quantity}) {
    return _Data(
      card: card,
      denomination: denomination,
      quantity: quantity,
    );
  }
}

/// @nodoc
const $GiftCardSku = _$GiftCardSkuTearOff();

/// @nodoc
mixin _$GiftCardSku {
  GiftCard get card => throw _privateConstructorUsedError;
  Denomination get denomination => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GiftCard card, Denomination denomination, int quantity)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftCard card, Denomination denomination, int quantity)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GiftCardSkuCopyWith<GiftCardSku> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardSkuCopyWith<$Res> {
  factory $GiftCardSkuCopyWith(
          GiftCardSku value, $Res Function(GiftCardSku) then) =
      _$GiftCardSkuCopyWithImpl<$Res>;
  $Res call({GiftCard card, Denomination denomination, int quantity});

  $GiftCardCopyWith<$Res> get card;
  $DenominationCopyWith<$Res> get denomination;
}

/// @nodoc
class _$GiftCardSkuCopyWithImpl<$Res> implements $GiftCardSkuCopyWith<$Res> {
  _$GiftCardSkuCopyWithImpl(this._value, this._then);

  final GiftCardSku _value;
  // ignore: unused_field
  final $Res Function(GiftCardSku) _then;

  @override
  $Res call({
    Object? card = freezed,
    Object? denomination = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      card: card == freezed ? _value.card : card as GiftCard,
      denomination: denomination == freezed
          ? _value.denomination
          : denomination as Denomination,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
    ));
  }

  @override
  $GiftCardCopyWith<$Res> get card {
    return $GiftCardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value));
    });
  }

  @override
  $DenominationCopyWith<$Res> get denomination {
    return $DenominationCopyWith<$Res>(_value.denomination, (value) {
      return _then(_value.copyWith(denomination: value));
    });
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $GiftCardSkuCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({GiftCard card, Denomination denomination, int quantity});

  @override
  $GiftCardCopyWith<$Res> get card;
  @override
  $DenominationCopyWith<$Res> get denomination;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$GiftCardSkuCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? card = freezed,
    Object? denomination = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_Data(
      card: card == freezed ? _value.card : card as GiftCard,
      denomination: denomination == freezed
          ? _value.denomination
          : denomination as Denomination,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
    ));
  }
}

/// @nodoc
class _$_Data implements _Data {
  const _$_Data(
      {required this.card, required this.denomination, required this.quantity});

  @override
  final GiftCard card;
  @override
  final Denomination denomination;
  @override
  final int quantity;

  @override
  String toString() {
    return 'GiftCardSku.data(card: $card, denomination: $denomination, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)) &&
            (identical(other.denomination, denomination) ||
                const DeepCollectionEquality()
                    .equals(other.denomination, denomination)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(card) ^
      const DeepCollectionEquality().hash(denomination) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GiftCard card, Denomination denomination, int quantity)
        data,
  }) {
    return data(card, denomination, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GiftCard card, Denomination denomination, int quantity)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(card, denomination, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements GiftCardSku {
  const factory _Data(
      {required GiftCard card,
      required Denomination denomination,
      required int quantity}) = _$_Data;

  @override
  GiftCard get card => throw _privateConstructorUsedError;
  @override
  Denomination get denomination => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
