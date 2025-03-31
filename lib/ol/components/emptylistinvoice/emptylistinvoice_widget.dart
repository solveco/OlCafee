import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'emptylistinvoice_model.dart';
export 'emptylistinvoice_model.dart';

class EmptylistinvoiceWidget extends StatefulWidget {
  const EmptylistinvoiceWidget({super.key});

  @override
  State<EmptylistinvoiceWidget> createState() => _EmptylistinvoiceWidgetState();
}

class _EmptylistinvoiceWidgetState extends State<EmptylistinvoiceWidget> {
  late EmptylistinvoiceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptylistinvoiceModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.list_alt_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 44.0,
              ),
              Text(
                'لايوجد فواتير حالية ',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'prada',
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                      useGoogleFonts: false,
                    ),
              ),
            ].divide(SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
