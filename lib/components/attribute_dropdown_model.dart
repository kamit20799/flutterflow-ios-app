import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'attribute_dropdown_widget.dart' show AttributeDropdownWidget;
import 'package:flutter/material.dart';

class AttributeDropdownModel extends FlutterFlowModel<AttributeDropdownWidget> {
  ///  Local state fields for this component.

  String? defaultDropdownValue = '[]';

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
