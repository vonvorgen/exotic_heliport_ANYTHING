// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'card_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Denomination _$DenominationFromJson(Map<String, dynamic> json) {
  return _Denomination.fromJson(json);
}

/// @nodoc
class _$DenominationTearOff {
  const _$DenominationTearOff();

  _Denomination call(
      {required double price,
      required String currency,
      required String stock}) {
    return _Denomination(
      price: price,
      currency: currency,
      stock: stock,
    );
  }

  Denomination fromJson(Map<String, Object> json) {
    return Denomination.fromJson(json);
  }
}

/// @nodoc
const $Denomination = _$DenominationTearOff();

/// @nodoc
mixin _$Denomination {
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get stock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DenominationCopyWith<Denomination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DenominationCopyWith<$Res> {
  factory $DenominationCopyWith(
          Denomination value, $Res Function(Denomination) then) =
      _$DenominationCopyWithImpl<$Res>;
  $Res call({double price, String currency, String stock});
}

/// @nodoc
class _$DenominationCopyWithImpl<$Res> implements $DenominationCopyWith<$Res> {
  _$DenominationCopyWithImpl(this._value, this._then);

  final Denomination _value;
  // ignore: unused_field
  final $Res Function(Denomination) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? currency = freezed,
    Object? stock = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed ? _value.price : price as double,
      currency: currency == freezed ? _value.currency : currency as String,
      stock: stock == freezed ? _value.stock : stock as String,
    ));
  }
}

/// @nodoc
abstract class _$DenominationCopyWith<$Res>
    implements $DenominationCopyWith<$Res> {
  factory _$DenominationCopyWith(
          _Denomination value, $Res Function(_Denomination) then) =
      __$DenominationCopyWithImpl<$Res>;
  @override
  $Res call({double price, String currency, String stock});
}

/// @nodoc
class __$DenominationCopyWithImpl<$Res> extends _$DenominationCopyWithImpl<$Res>
    implements _$DenominationCopyWith<$Res> {
  __$DenominationCopyWithImpl(
      _Denomination _value, $Res Function(_Denomination) _then)
      : super(_value, (v) => _then(v as _Denomination));

  @override
  _Denomination get _value => super._value as _Denomination;

  @override
  $Res call({
    Object? price = freezed,
    Object? currency = freezed,
    Object? stock = freezed,
  }) {
    return _then(_Denomination(
      price: price == freezed ? _value.price : price as double,
      currency: currency == freezed ? _value.currency : currency as String,
      stock: stock == freezed ? _value.stock : stock as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Denomination with DiagnosticableTreeMixin implements _Denomination {
  const _$_Denomination(
      {required this.price, required this.currency, required this.stock});

  factory _$_Denomination.fromJson(Map<String, dynamic> json) =>
      _$_$_DenominationFromJson(json);

  @override
  final double price;
  @override
  final String currency;
  @override
  final String stock;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Denomination(price: $price, currency: $currency, stock: $stock)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Denomination'))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('stock', stock));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Denomination &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.stock, stock) ||
                const DeepCollectionEquality().equals(other.stock, stock)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(stock);

  @JsonKey(ignore: true)
  @override
  _$DenominationCopyWith<_Denomination> get copyWith =>
      __$DenominationCopyWithImpl<_Denomination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DenominationToJson(this);
  }
}

abstract class _Denomination implements Denomination {
  const factory _Denomination(
      {required double price,
      required String currency,
      required String stock}) = _$_Denomination;

  factory _Denomination.fromJson(Map<String, dynamic> json) =
      _$_Denomination.fromJson;

  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get stock => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DenominationCopyWith<_Denomination> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomDenomination _$CustomDenominationFromJson(Map<String, dynamic> json) {
  return _CustomDenomination.fromJson(json);
}

/// @nodoc
class _$CustomDenominationTearOff {
  const _$CustomDenominationTearOff();

  _CustomDenomination call(
      {required double minPrice, required double maxPrice}) {
    return _CustomDenomination(
      minPrice: minPrice,
      maxPrice: maxPrice,
    );
  }

  CustomDenomination fromJson(Map<String, Object> json) {
    return CustomDenomination.fromJson(json);
  }
}

/// @nodoc
const $CustomDenomination = _$CustomDenominationTearOff();

/// @nodoc
mixin _$CustomDenomination {
  double get minPrice => throw _privateConstructorUsedError;
  double get maxPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomDenominationCopyWith<CustomDenomination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomDenominationCopyWith<$Res> {
  factory $CustomDenominationCopyWith(
          CustomDenomination value, $Res Function(CustomDenomination) then) =
      _$CustomDenominationCopyWithImpl<$Res>;
  $Res call({double minPrice, double maxPrice});
}

/// @nodoc
class _$CustomDenominationCopyWithImpl<$Res>
    implements $CustomDenominationCopyWith<$Res> {
  _$CustomDenominationCopyWithImpl(this._value, this._then);

  final CustomDenomination _value;
  // ignore: unused_field
  final $Res Function(CustomDenomination) _then;

  @override
  $Res call({
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_value.copyWith(
      minPrice: minPrice == freezed ? _value.minPrice : minPrice as double,
      maxPrice: maxPrice == freezed ? _value.maxPrice : maxPrice as double,
    ));
  }
}

/// @nodoc
abstract class _$CustomDenominationCopyWith<$Res>
    implements $CustomDenominationCopyWith<$Res> {
  factory _$CustomDenominationCopyWith(
          _CustomDenomination value, $Res Function(_CustomDenomination) then) =
      __$CustomDenominationCopyWithImpl<$Res>;
  @override
  $Res call({double minPrice, double maxPrice});
}

/// @nodoc
class __$CustomDenominationCopyWithImpl<$Res>
    extends _$CustomDenominationCopyWithImpl<$Res>
    implements _$CustomDenominationCopyWith<$Res> {
  __$CustomDenominationCopyWithImpl(
      _CustomDenomination _value, $Res Function(_CustomDenomination) _then)
      : super(_value, (v) => _then(v as _CustomDenomination));

  @override
  _CustomDenomination get _value => super._value as _CustomDenomination;

  @override
  $Res call({
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_CustomDenomination(
      minPrice: minPrice == freezed ? _value.minPrice : minPrice as double,
      maxPrice: maxPrice == freezed ? _value.maxPrice : maxPrice as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CustomDenomination
    with DiagnosticableTreeMixin
    implements _CustomDenomination {
  const _$_CustomDenomination({required this.minPrice, required this.maxPrice});

  factory _$_CustomDenomination.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomDenominationFromJson(json);

  @override
  final double minPrice;
  @override
  final double maxPrice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomDenomination(minPrice: $minPrice, maxPrice: $maxPrice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomDenomination'))
      ..add(DiagnosticsProperty('minPrice', minPrice))
      ..add(DiagnosticsProperty('maxPrice', maxPrice));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomDenomination &&
            (identical(other.minPrice, minPrice) ||
                const DeepCollectionEquality()
                    .equals(other.minPrice, minPrice)) &&
            (identical(other.maxPrice, maxPrice) ||
                const DeepCollectionEquality()
                    .equals(other.maxPrice, maxPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(minPrice) ^
      const DeepCollectionEquality().hash(maxPrice);

  @JsonKey(ignore: true)
  @override
  _$CustomDenominationCopyWith<_CustomDenomination> get copyWith =>
      __$CustomDenominationCopyWithImpl<_CustomDenomination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomDenominationToJson(this);
  }
}

abstract class _CustomDenomination implements CustomDenomination {
  const factory _CustomDenomination(
      {required double minPrice,
      required double maxPrice}) = _$_CustomDenomination;

  factory _CustomDenomination.fromJson(Map<String, dynamic> json) =
      _$_CustomDenomination.fromJson;

  @override
  double get minPrice => throw _privateConstructorUsedError;
  @override
  double get maxPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CustomDenominationCopyWith<_CustomDenomination> get copyWith =>
      throw _privateConstructorUsedError;
}

GiftCard _$GiftCardFromJson(Map<String, dynamic> json) {
  return _GiftCard.fromJson(json);
}

/// @nodoc
class _$GiftCardTearOff {
  const _$GiftCardTearOff();

  _GiftCard call(
      {required String vendor,
      required String brand,
      required String image,
      required int position,
      required double discount,
      required String terms,
      required List<Denomination> denominations,
      List<CustomDenomination> customDenominations = const [],
      required String disclaimer}) {
    return _GiftCard(
      vendor: vendor,
      brand: brand,
      image: image,
      position: position,
      discount: discount,
      terms: terms,
      denominations: denominations,
      customDenominations: customDenominations,
      disclaimer: disclaimer,
    );
  }

  GiftCard fromJson(Map<String, Object> json) {
    return GiftCard.fromJson(json);
  }
}

/// @nodoc
const $GiftCard = _$GiftCardTearOff();

/// @nodoc
mixin _$GiftCard {
  String get vendor => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError; // URI
  int get position => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  String get terms => throw _privateConstructorUsedError;
  List<Denomination> get denominations => throw _privateConstructorUsedError;
  List<CustomDenomination> get customDenominations =>
      throw _privateConstructorUsedError;
  String get disclaimer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftCardCopyWith<GiftCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardCopyWith<$Res> {
  factory $GiftCardCopyWith(GiftCard value, $Res Function(GiftCard) then) =
      _$GiftCardCopyWithImpl<$Res>;
  $Res call(
      {String vendor,
      String brand,
      String image,
      int position,
      double discount,
      String terms,
      List<Denomination> denominations,
      List<CustomDenomination> customDenominations,
      String disclaimer});
}

/// @nodoc
class _$GiftCardCopyWithImpl<$Res> implements $GiftCardCopyWith<$Res> {
  _$GiftCardCopyWithImpl(this._value, this._then);

  final GiftCard _value;
  // ignore: unused_field
  final $Res Function(GiftCard) _then;

  @override
  $Res call({
    Object? vendor = freezed,
    Object? brand = freezed,
    Object? image = freezed,
    Object? position = freezed,
    Object? discount = freezed,
    Object? terms = freezed,
    Object? denominations = freezed,
    Object? customDenominations = freezed,
    Object? disclaimer = freezed,
  }) {
    return _then(_value.copyWith(
      vendor: vendor == freezed ? _value.vendor : vendor as String,
      brand: brand == freezed ? _value.brand : brand as String,
      image: image == freezed ? _value.image : image as String,
      position: position == freezed ? _value.position : position as int,
      discount: discount == freezed ? _value.discount : discount as double,
      terms: terms == freezed ? _value.terms : terms as String,
      denominations: denominations == freezed
          ? _value.denominations
          : denominations as List<Denomination>,
      customDenominations: customDenominations == freezed
          ? _value.customDenominations
          : customDenominations as List<CustomDenomination>,
      disclaimer:
          disclaimer == freezed ? _value.disclaimer : disclaimer as String,
    ));
  }
}

/// @nodoc
abstract class _$GiftCardCopyWith<$Res> implements $GiftCardCopyWith<$Res> {
  factory _$GiftCardCopyWith(_GiftCard value, $Res Function(_GiftCard) then) =
      __$GiftCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {String vendor,
      String brand,
      String image,
      int position,
      double discount,
      String terms,
      List<Denomination> denominations,
      List<CustomDenomination> customDenominations,
      String disclaimer});
}

/// @nodoc
class __$GiftCardCopyWithImpl<$Res> extends _$GiftCardCopyWithImpl<$Res>
    implements _$GiftCardCopyWith<$Res> {
  __$GiftCardCopyWithImpl(_GiftCard _value, $Res Function(_GiftCard) _then)
      : super(_value, (v) => _then(v as _GiftCard));

  @override
  _GiftCard get _value => super._value as _GiftCard;

  @override
  $Res call({
    Object? vendor = freezed,
    Object? brand = freezed,
    Object? image = freezed,
    Object? position = freezed,
    Object? discount = freezed,
    Object? terms = freezed,
    Object? denominations = freezed,
    Object? customDenominations = freezed,
    Object? disclaimer = freezed,
  }) {
    return _then(_GiftCard(
      vendor: vendor == freezed ? _value.vendor : vendor as String,
      brand: brand == freezed ? _value.brand : brand as String,
      image: image == freezed ? _value.image : image as String,
      position: position == freezed ? _value.position : position as int,
      discount: discount == freezed ? _value.discount : discount as double,
      terms: terms == freezed ? _value.terms : terms as String,
      denominations: denominations == freezed
          ? _value.denominations
          : denominations as List<Denomination>,
      customDenominations: customDenominations == freezed
          ? _value.customDenominations
          : customDenominations as List<CustomDenomination>,
      disclaimer:
          disclaimer == freezed ? _value.disclaimer : disclaimer as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GiftCard with DiagnosticableTreeMixin implements _GiftCard {
  const _$_GiftCard(
      {required this.vendor,
      required this.brand,
      required this.image,
      required this.position,
      required this.discount,
      required this.terms,
      required this.denominations,
      this.customDenominations = const [],
      required this.disclaimer});

  factory _$_GiftCard.fromJson(Map<String, dynamic> json) =>
      _$_$_GiftCardFromJson(json);

  @override
  final String vendor;
  @override
  final String brand;
  @override
  final String image;
  @override // URI
  final int position;
  @override
  final double discount;
  @override
  final String terms;
  @override
  final List<Denomination> denominations;
  @JsonKey(defaultValue: const [])
  @override
  final List<CustomDenomination> customDenominations;
  @override
  final String disclaimer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GiftCard(vendor: $vendor, brand: $brand, image: $image, position: $position, discount: $discount, terms: $terms, denominations: $denominations, customDenominations: $customDenominations, disclaimer: $disclaimer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GiftCard'))
      ..add(DiagnosticsProperty('vendor', vendor))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('discount', discount))
      ..add(DiagnosticsProperty('terms', terms))
      ..add(DiagnosticsProperty('denominations', denominations))
      ..add(DiagnosticsProperty('customDenominations', customDenominations))
      ..add(DiagnosticsProperty('disclaimer', disclaimer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GiftCard &&
            (identical(other.vendor, vendor) ||
                const DeepCollectionEquality().equals(other.vendor, vendor)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.terms, terms) ||
                const DeepCollectionEquality().equals(other.terms, terms)) &&
            (identical(other.denominations, denominations) ||
                const DeepCollectionEquality()
                    .equals(other.denominations, denominations)) &&
            (identical(other.customDenominations, customDenominations) ||
                const DeepCollectionEquality()
                    .equals(other.customDenominations, customDenominations)) &&
            (identical(other.disclaimer, disclaimer) ||
                const DeepCollectionEquality()
                    .equals(other.disclaimer, disclaimer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vendor) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(terms) ^
      const DeepCollectionEquality().hash(denominations) ^
      const DeepCollectionEquality().hash(customDenominations) ^
      const DeepCollectionEquality().hash(disclaimer);

  @JsonKey(ignore: true)
  @override
  _$GiftCardCopyWith<_GiftCard> get copyWith =>
      __$GiftCardCopyWithImpl<_GiftCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GiftCardToJson(this);
  }
}

abstract class _GiftCard implements GiftCard {
  const factory _GiftCard(
      {required String vendor,
      required String brand,
      required String image,
      required int position,
      required double discount,
      required String terms,
      required List<Denomination> denominations,
      List<CustomDenomination> customDenominations,
      required String disclaimer}) = _$_GiftCard;

  factory _GiftCard.fromJson(Map<String, dynamic> json) = _$_GiftCard.fromJson;

  @override
  String get vendor => throw _privateConstructorUsedError;
  @override
  String get brand => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override // URI
  int get position => throw _privateConstructorUsedError;
  @override
  double get discount => throw _privateConstructorUsedError;
  @override
  String get terms => throw _privateConstructorUsedError;
  @override
  List<Denomination> get denominations => throw _privateConstructorUsedError;
  @override
  List<CustomDenomination> get customDenominations =>
      throw _privateConstructorUsedError;
  @override
  String get disclaimer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GiftCardCopyWith<_GiftCard> get copyWith =>
      throw _privateConstructorUsedError;
}
