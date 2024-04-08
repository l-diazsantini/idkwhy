import '/flutter_flow/flutter_flow_util.dart';
import 'wave_gen_selection_widget.dart' show WaveGenSelectionWidget;
import 'package:flutter/material.dart';

class WaveGenSelectionModel extends FlutterFlowModel<WaveGenSelectionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
