import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cart_products_copy_widget.dart' show CartProductsCopyWidget;
import 'package:flutter/material.dart';

class CartProductsCopyModel extends FlutterFlowModel<CartProductsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Cart Items API)] action in CartProductsCopy widget.
  ApiCallResponse? apiResult7bg;
  // Stores action output result for [Backend Call - API (Remove Cart Product API)] action in Icon widget.
  ApiCallResponse? removeCartProductResponse;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Order Placed API)] action in Button widget.
  ApiCallResponse? placeOrderResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
