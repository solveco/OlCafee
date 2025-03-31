import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logo_model.dart';
export 'logo_model.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({super.key});

  @override
  State<LogoWidget> createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  late LogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    1.0,
                  ),
                )
              ],
              gradient: LinearGradient(
                colors: [
                  Color(0xFFAD8B6D),
                  FlutterFlowTheme.of(context).secondaryBackground
                ],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(1.0, -1.0),
                end: AlignmentDirectional(-1.0, 1.0),
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 100),
                curve: Curves.easeInOut,
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Color(0xFFAD8B6D),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Brown_Elegant_Cofee_Logo_(100_x_100_px).png',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
            ),
          ),
        ],
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
