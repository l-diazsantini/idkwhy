import '/flutter_flow/flutter_flow_util.dart';
import 'oscilloscope_widget.dart' show OscilloscopeWidget;
import 'package:flutter/material.dart';

class OscilloscopeModel extends FlutterFlowModel<OscilloscopeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
