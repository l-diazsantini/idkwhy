import '/flutter_flow/flutter_flow_util.dart';
import 'bt_search_widget.dart' show BtSearchWidget;
import 'package:flutter/material.dart';

class BtSearchModel extends FlutterFlowModel<BtSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - isBluetoothEnabled] action in BtSearch widget.
  bool? bluetoothEnabled;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
