import '/flutter_flow/flutter_flow_util.dart';
import 'multimeter_measurement_widget.dart' show MultimeterMeasurementWidget;
import 'package:flutter/material.dart';

class MultimeterMeasurementModel
    extends FlutterFlowModel<MultimeterMeasurementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
