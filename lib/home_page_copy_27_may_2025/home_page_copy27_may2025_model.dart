import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'home_page_copy27_may2025_widget.dart' show HomePageCopy27May2025Widget;
import 'package:flutter/material.dart';

class HomePageCopy27May2025Model
    extends FlutterFlowModel<HomePageCopy27May2025Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Orders API)] action in HomePageCopy-27-may-2025 widget.
  ApiCallResponse? apiResultzyj;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
  }
}
