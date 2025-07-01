import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _countryCode = prefs.getString('ff_countryCode') ?? _countryCode;
    });
    _safeInit(() {
      _MobileNumber = prefs.getString('ff_MobileNumber') ?? _MobileNumber;
    });
    _safeInit(() {
      _cartTotal = prefs.getDouble('ff_cartTotal') ?? _cartTotal;
    });
    _safeInit(() {
      _cartId = prefs.getString('ff_cartId') ?? _cartId;
    });
    _safeInit(() {
      _cartCount = prefs.getInt('ff_cartCount') ?? _cartCount;
    });
    _safeInit(() {
      _userid = prefs.getInt('ff_userid') ?? _userid;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userPhone = '';
  String get userPhone => _userPhone;
  set userPhone(String value) {
    _userPhone = value;
  }

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  /// This is the user token generated dynamically.
  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  /// Login user email.
  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  String _countryCode = '';
  String get countryCode => _countryCode;
  set countryCode(String value) {
    _countryCode = value;
    prefs.setString('ff_countryCode', value);
  }

  String _MobileNumber = '';
  String get MobileNumber => _MobileNumber;
  set MobileNumber(String value) {
    _MobileNumber = value;
    prefs.setString('ff_MobileNumber', value);
  }

  double _cartTotal = 0.0;
  double get cartTotal => _cartTotal;
  set cartTotal(double value) {
    _cartTotal = value;
    prefs.setDouble('ff_cartTotal', value);
  }

  String _cartId = '';
  String get cartId => _cartId;
  set cartId(String value) {
    _cartId = value;
    prefs.setString('ff_cartId', value);
  }

  int _cartCount = 0;
  int get cartCount => _cartCount;
  set cartCount(int value) {
    _cartCount = value;
    prefs.setInt('ff_cartCount', value);
  }

  int _userid = 0;
  int get userid => _userid;
  set userid(int value) {
    _userid = value;
    prefs.setInt('ff_userid', value);
  }

  int _vendorStoreId = 0;
  int get vendorStoreId => _vendorStoreId;
  set vendorStoreId(int value) {
    _vendorStoreId = value;
  }

  dynamic _selectedProductAttributes = jsonDecode('{}');
  dynamic get selectedProductAttributes => _selectedProductAttributes;
  set selectedProductAttributes(dynamic value) {
    _selectedProductAttributes = value;
  }

  dynamic _selectedAttributesKeys = jsonDecode('[]');
  dynamic get selectedAttributesKeys => _selectedAttributesKeys;
  set selectedAttributesKeys(dynamic value) {
    _selectedAttributesKeys = value;
  }

  dynamic _selectedAttributesValues = jsonDecode('[]');
  dynamic get selectedAttributesValues => _selectedAttributesValues;
  set selectedAttributesValues(dynamic value) {
    _selectedAttributesValues = value;
  }

  int _productVariationId = 0;
  int get productVariationId => _productVariationId;
  set productVariationId(int value) {
    _productVariationId = value;
  }

  String _productVariationPrice = '';
  String get productVariationPrice => _productVariationPrice;
  set productVariationPrice(String value) {
    _productVariationPrice = value;
  }

  String _productVariationImage = '';
  String get productVariationImage => _productVariationImage;
  set productVariationImage(String value) {
    _productVariationImage = value;
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
