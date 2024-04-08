import '/flutter_flow/flutter_flow_util.dart';
import 'multimeter_widget.dart' show MultimeterWidget;
import 'package:flutter/material.dart';

class MultimeterModel extends FlutterFlowModel<MultimeterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
