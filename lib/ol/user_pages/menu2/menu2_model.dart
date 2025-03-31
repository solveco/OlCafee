import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'menu2_widget.dart' show Menu2Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Menu2Model extends FlutterFlowModel<Menu2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchh widget.
  FocusNode? searchhFocusNode;
  TextEditingController? searchhTextController;
  String? Function(BuildContext, String?)? searchhTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchhFocusNode?.dispose();
    searchhTextController?.dispose();
  }
}
