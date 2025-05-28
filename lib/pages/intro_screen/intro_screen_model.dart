import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'intro_screen_widget.dart' show IntroScreenWidget;
import 'package:flutter/material.dart';

class IntroScreenModel extends FlutterFlowModel<IntroScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
