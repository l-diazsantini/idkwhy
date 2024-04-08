import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'display_rec_mesg_widget.dart' show DisplayRecMesgWidget;
import 'package:flutter/material.dart';

class DisplayRecMesgModel extends FlutterFlowModel<DisplayRecMesgWidget> {
  ///  Local state fields for this component.

  String? data;

  ///  State fields for stateful widgets in this component.

  InstantTimer? receivedDataTimer;
  // Stores action output result for [Custom Action - receiveData] action in DisplayRecMesg widget.
  String? receivedData;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    receivedDataTimer?.cancel();
  }
}
