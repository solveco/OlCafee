import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'basketedit_model.dart';
export 'basketedit_model.dart';

class BasketeditWidget extends StatefulWidget {
  const BasketeditWidget({
    super.key,
    required this.noofitem,
    required this.index,
    required this.price,
    required this.addons,
  });

  final int? noofitem;
  final int? index;
  final double? price;
  final String? addons;

  @override
  State<BasketeditWidget> createState() => _BasketeditWidgetState();
}

class _BasketeditWidgetState extends State<BasketeditWidget> {
  late BasketeditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BasketeditModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(8.0),
                shape: BoxShape.rectangle,
              ),
              child: FlutterFlowCountController(
                decrementIconBuilder: (enabled) => Icon(
                  Icons.remove_rounded,
                  color: enabled
                      ? FlutterFlowTheme.of(context).secondaryText
                      : FlutterFlowTheme.of(context).alternate,
                  size: 24.0,
                ),
                incrementIconBuilder: (enabled) => Icon(
                  Icons.add_rounded,
                  color: enabled
                      ? FlutterFlowTheme.of(context).primary
                      : FlutterFlowTheme.of(context).alternate,
                  size: 24.0,
                ),
                countBuilder: (count) => Text(
                  count.toString(),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'prada',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                count: _model.countControllerValue ??= widget!.noofitem!,
                updateCount: (count) =>
                    safeSetState(() => _model.countControllerValue = count),
                stepSize: 1,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
              child: Text(
                'تفضيلات الطلب أو الصنف',
                textAlign: TextAlign.end,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'prada',
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
              child: FFButtonWidget(
                onPressed: () async {
                  FFAppState().updateBasketAtIndex(
                    widget!.index!,
                    (e) => e
                      ..noOfItem = _model.countControllerValue
                      ..totalPrice =
                          (widget!.price!) * (_model.countControllerValue!),
                  );
                  safeSetState(() {});
                  Navigator.pop(context);
                },
                text: 'ادخال',
                options: FFButtonOptions(
                  width: 250.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'prada',
                        color: Colors.white,
                        fontSize: 13.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
