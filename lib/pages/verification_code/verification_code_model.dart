import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verification_code_widget.dart' show VerificationCodeWidget;
import 'package:flutter/material.dart';

class VerificationCodeModel extends FlutterFlowModel<VerificationCodeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (User Login)] action in Button widget.
  ApiCallResponse? userLoginResponse;
  // Stores action output result for [Backend Call - API (Phone Number Check)] action in Button widget.
  ApiCallResponse? resendOtpResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
