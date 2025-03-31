import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _favitem = prefs.getStringList('ff_favitem')?.map(int.parse).toList() ??
          _favitem;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_loyataly')) {
        try {
          final serializedData = prefs.getString('ff_loyataly') ?? '{}';
          _loyataly =
              LoyatalyStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_reversetabel')) {
        try {
          final serializedData = prefs.getString('ff_reversetabel') ?? '{}';
          _reversetabel =
              TabelreversStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<int> _favitem = [];
  List<int> get favitem => _favitem;
  set favitem(List<int> value) {
    _favitem = value;
    prefs.setStringList('ff_favitem', value.map((x) => x.toString()).toList());
  }

  void addToFavitem(int value) {
    favitem.add(value);
    prefs.setStringList(
        'ff_favitem', _favitem.map((x) => x.toString()).toList());
  }

  void removeFromFavitem(int value) {
    favitem.remove(value);
    prefs.setStringList(
        'ff_favitem', _favitem.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromFavitem(int index) {
    favitem.removeAt(index);
    prefs.setStringList(
        'ff_favitem', _favitem.map((x) => x.toString()).toList());
  }

  void updateFavitemAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    favitem[index] = updateFn(_favitem[index]);
    prefs.setStringList(
        'ff_favitem', _favitem.map((x) => x.toString()).toList());
  }

  void insertAtIndexInFavitem(int index, int value) {
    favitem.insert(index, value);
    prefs.setStringList(
        'ff_favitem', _favitem.map((x) => x.toString()).toList());
  }

  List<OrderlistStruct> _basket = [];
  List<OrderlistStruct> get basket => _basket;
  set basket(List<OrderlistStruct> value) {
    _basket = value;
  }

  void addToBasket(OrderlistStruct value) {
    basket.add(value);
  }

  void removeFromBasket(OrderlistStruct value) {
    basket.remove(value);
  }

  void removeAtIndexFromBasket(int index) {
    basket.removeAt(index);
  }

  void updateBasketAtIndex(
    int index,
    OrderlistStruct Function(OrderlistStruct) updateFn,
  ) {
    basket[index] = updateFn(_basket[index]);
  }

  void insertAtIndexInBasket(int index, OrderlistStruct value) {
    basket.insert(index, value);
  }

  LoyatalyStruct _loyataly = LoyatalyStruct();
  LoyatalyStruct get loyataly => _loyataly;
  set loyataly(LoyatalyStruct value) {
    _loyataly = value;
    prefs.setString('ff_loyataly', value.serialize());
  }

  void updateLoyatalyStruct(Function(LoyatalyStruct) updateFn) {
    updateFn(_loyataly);
    prefs.setString('ff_loyataly', _loyataly.serialize());
  }

  TabelreversStruct _reversetabel = TabelreversStruct();
  TabelreversStruct get reversetabel => _reversetabel;
  set reversetabel(TabelreversStruct value) {
    _reversetabel = value;
    prefs.setString('ff_reversetabel', value.serialize());
  }

  void updateReversetabelStruct(Function(TabelreversStruct) updateFn) {
    updateFn(_reversetabel);
    prefs.setString('ff_reversetabel', _reversetabel.serialize());
  }

  String _tabelnuber = '';
  String get tabelnuber => _tabelnuber;
  set tabelnuber(String value) {
    _tabelnuber = value;
  }

  DisaccountinvoiceStruct _disaccountinvoice = DisaccountinvoiceStruct();
  DisaccountinvoiceStruct get disaccountinvoice => _disaccountinvoice;
  set disaccountinvoice(DisaccountinvoiceStruct value) {
    _disaccountinvoice = value;
  }

  void updateDisaccountinvoiceStruct(
      Function(DisaccountinvoiceStruct) updateFn) {
    updateFn(_disaccountinvoice);
  }

  DatepickerStruct _pickdate = DatepickerStruct();
  DatepickerStruct get pickdate => _pickdate;
  set pickdate(DatepickerStruct value) {
    _pickdate = value;
  }

  void updatePickdateStruct(Function(DatepickerStruct) updateFn) {
    updateFn(_pickdate);
  }

  int _counter = 0;
  int get counter => _counter;
  set counter(int value) {
    _counter = value;
  }

  String _base64InvoiceImage = '';
  String get base64InvoiceImage => _base64InvoiceImage;
  set base64InvoiceImage(String value) {
    _base64InvoiceImage = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
