import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/ol/components/basketedit/basketedit_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'waiterorder_widget.dart' show WaiterorderWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WaiterorderModel extends FlutterFlowModel<WaiterorderWidget> {
  ///  Local state fields for this page.

  String? category;

  int? counter = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in waiterorder widget.
  List<CategoriesOlaRow>? categories;
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
