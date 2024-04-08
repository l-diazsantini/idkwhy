import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/widgets/display_rec_mesg/display_rec_mesg_widget.dart';
import '/widgets/signal_indicator/signal_indicator_widget.dart';
import 'demo_page_widget.dart' show DemoPageWidget;
import 'package:flutter/material.dart';

class DemoPageModel extends FlutterFlowModel<DemoPageWidget> {
  ///  Local state fields for this page.

  int? currentRssi;

  String? receivedValue;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? rssiUpdateTimer;
  // Stores action output result for [Custom Action - getRssi] action in DemoPage widget.
  int? updatedRssi;
  // Model for SignalIndicator component.
  late SignalIndicatorModel signalIndicatorModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for DisplayRecMesg component.
  late DisplayRecMesgModel displayRecMesgModel;

  @override
  void initState(BuildContext context) {
    signalIndicatorModel = createModel(context, () => SignalIndicatorModel());
    displayRecMesgModel = createModel(context, () => DisplayRecMesgModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    rssiUpdateTimer?.cancel();
    signalIndicatorModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    displayRecMesgModel.dispose();
  }
}
