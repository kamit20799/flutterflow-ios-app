import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'product_detail_copy_widget.dart' show ProductDetailCopyWidget;
import 'package:flutter/material.dart';

class ProductDetailCopyModel extends FlutterFlowModel<ProductDetailCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? cartResponse;
  // Stores action output result for [Backend Call - API (Update Cart API)] action in Button widget.
  ApiCallResponse? updateCartResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
