import '/flutter_flow/flutter_flow_util.dart';
import 'main_menu_widget.dart' show MainMenuWidget;
import 'package:flutter/material.dart';

class MainMenuModel extends FlutterFlowModel<MainMenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
