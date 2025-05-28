import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'orderpage_copy_widget.dart' show OrderpageCopyWidget;
import 'package:flutter/material.dart';

class OrderpageCopyModel extends FlutterFlowModel<OrderpageCopyWidget> {
  ///  State fields for stateful widgets in this page.

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
