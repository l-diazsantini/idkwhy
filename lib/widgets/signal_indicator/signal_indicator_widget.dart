import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'signal_indicator_model.dart';
export 'signal_indicator_model.dart';

class SignalIndicatorWidget extends StatefulWidget {
  const SignalIndicatorWidget({
    super.key,
    required this.rssi,
    Color? color,
  }) : color = color ?? const Color(0x7F39D2C0);

  final int? rssi;
  final Color color;

  @override
  State<SignalIndicatorWidget> createState() => _SignalIndicatorWidgetState();
}

class _SignalIndicatorWidgetState extends State<SignalIndicatorWidget> {
  late SignalIndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignalIndicatorModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
              child: Container(
                width: 4.0,
                height: 7.0,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
              child: Container(
                width: 4.0,
                height: 11.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    widget.rssi! >= -90
                        ? widget.color
                        : FlutterFlowTheme.of(context).accent4,
                    FlutterFlowTheme.of(context).accent4,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
              child: Container(
                width: 4.0,
                height: 14.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    widget.rssi! >= -67
                        ? widget.color
                        : FlutterFlowTheme.of(context).accent4,
                    FlutterFlowTheme.of(context).accent4,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Container(
              width: 4.0,
              height: 17.0,
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  widget.rssi! >= -55
                      ? widget.color
                      : FlutterFlowTheme.of(context).accent4,
                  FlutterFlowTheme.of(context).accent4,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
