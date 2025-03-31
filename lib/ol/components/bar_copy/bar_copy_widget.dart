import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bar_copy_model.dart';
export 'bar_copy_model.dart';

class BarCopyWidget extends StatefulWidget {
  const BarCopyWidget({super.key});

  @override
  State<BarCopyWidget> createState() => _BarCopyWidgetState();
}

class _BarCopyWidgetState extends State<BarCopyWidget> {
  late BarCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: 24.0,
              borderWidth: 1.0,
              buttonSize: 50.0,
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 25.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
