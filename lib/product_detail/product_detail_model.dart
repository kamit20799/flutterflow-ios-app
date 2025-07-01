import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'product_detail_widget.dart' show ProductDetailWidget;
import 'package:flutter/material.dart';

class ProductDetailModel extends FlutterFlowModel<ProductDetailWidget> {
  ///  Local state fields for this page.

  String? selectedOption;

  List<dynamic> selectedAttributes = [];
  void addToSelectedAttributes(dynamic item) => selectedAttributes.add(item);
  void removeFromSelectedAttributes(dynamic item) =>
      selectedAttributes.remove(item);
  void removeAtIndexFromSelectedAttributes(int index) =>
      selectedAttributes.removeAt(index);
  void insertAtIndexInSelectedAttributes(int index, dynamic item) =>
      selectedAttributes.insert(index, item);
  void updateSelectedAttributesAtIndex(int index, Function(dynamic) updateFn) =>
      selectedAttributes[index] = updateFn(selectedAttributes[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? cartResponse;
  // Stores action output result for [Backend Call - API (Get Cart Items API)] action in Button widget.
  ApiCallResponse? getCartitemsResponse;
  // Stores action output result for [Backend Call - API (Update Cart API)] action in Button widget.
  ApiCallResponse? updateCartResponse;
  // Stores action output result for [Backend Call - API (Get Cart Items API)] action in Button widget.
  ApiCallResponse? apiResulteac;
  // Stores action output result for [Backend Call - API (Get Product id)] action in Button widget.
  ApiCallResponse? getProductidResponse;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? simpleAddtoCartResponse;
  // Stores action output result for [Backend Call - API (Get Cart Items API)] action in Button widget.
  ApiCallResponse? simpleGetCartitemsResponse;
  // Stores action output result for [Backend Call - API (Update Cart API)] action in Button widget.
  ApiCallResponse? simpleUpdateCartResponse;
  // Stores action output result for [Backend Call - API (Get Cart Items API)] action in Button widget.
  ApiCallResponse? simpleUpdateGetCartitemsResponse;
  // Stores action output result for [Backend Call - API (Get Product id)] action in Button widget.
  ApiCallResponse? getProductIdResponse;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? addTocartResponse;
  // Stores action output result for [Backend Call - API (Get Cart Items API)] action in Button widget.
  ApiCallResponse? getCartItemResponse;
  // Stores action output result for [Backend Call - API (Update Cart API)] action in Button widget.
  ApiCallResponse? cartUpdateResponse;
  // Stores action output result for [Backend Call - API (Get Cart Items API)] action in Button widget.
  ApiCallResponse? apiResultkcGetCart;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
