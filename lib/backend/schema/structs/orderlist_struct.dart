// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderlistStruct extends BaseStruct {
  OrderlistStruct({
    String? name,
    String? category,
    double? price,
    String? currency,
    String? addons,
    int? noOfItem,
    double? totalPrice,
    String? image,
  })  : _name = name,
        _category = category,
        _price = price,
        _currency = currency,
        _addons = addons,
        _noOfItem = noOfItem,
        _totalPrice = totalPrice,
        _image = image;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "addons" field.
  String? _addons;
  String get addons => _addons ?? '';
  set addons(String? val) => _addons = val;

  bool hasAddons() => _addons != null;

  // "NoOfItem" field.
  int? _noOfItem;
  int get noOfItem => _noOfItem ?? 0;
  set noOfItem(int? val) => _noOfItem = val;

  void incrementNoOfItem(int amount) => noOfItem = noOfItem + amount;

  bool hasNoOfItem() => _noOfItem != null;

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  set totalPrice(double? val) => _totalPrice = val;

  void incrementTotalPrice(double amount) => totalPrice = totalPrice + amount;

  bool hasTotalPrice() => _totalPrice != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static OrderlistStruct fromMap(Map<String, dynamic> data) => OrderlistStruct(
        name: data['name'] as String?,
        category: data['category'] as String?,
        price: castToType<double>(data['price']),
        currency: data['currency'] as String?,
        addons: data['addons'] as String?,
        noOfItem: castToType<int>(data['NoOfItem']),
        totalPrice: castToType<double>(data['totalPrice']),
        image: data['image'] as String?,
      );

  static OrderlistStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderlistStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'category': _category,
        'price': _price,
        'currency': _currency,
        'addons': _addons,
        'NoOfItem': _noOfItem,
        'totalPrice': _totalPrice,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'addons': serializeParam(
          _addons,
          ParamType.String,
        ),
        'NoOfItem': serializeParam(
          _noOfItem,
          ParamType.int,
        ),
        'totalPrice': serializeParam(
          _totalPrice,
          ParamType.double,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrderlistStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderlistStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        addons: deserializeParam(
          data['addons'],
          ParamType.String,
          false,
        ),
        noOfItem: deserializeParam(
          data['NoOfItem'],
          ParamType.int,
          false,
        ),
        totalPrice: deserializeParam(
          data['totalPrice'],
          ParamType.double,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrderlistStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderlistStruct &&
        name == other.name &&
        category == other.category &&
        price == other.price &&
        currency == other.currency &&
        addons == other.addons &&
        noOfItem == other.noOfItem &&
        totalPrice == other.totalPrice &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [name, category, price, currency, addons, noOfItem, totalPrice, image]);
}

OrderlistStruct createOrderlistStruct({
  String? name,
  String? category,
  double? price,
  String? currency,
  String? addons,
  int? noOfItem,
  double? totalPrice,
  String? image,
}) =>
    OrderlistStruct(
      name: name,
      category: category,
      price: price,
      currency: currency,
      addons: addons,
      noOfItem: noOfItem,
      totalPrice: totalPrice,
      image: image,
    );
