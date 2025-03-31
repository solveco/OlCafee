import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'check_widget.dart' show CheckWidget;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckModel extends FlutterFlowModel<CheckWidget> {
  ///  Local state fields for this page.

  int? sellcounter = 0;

  String? invoicenumber;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in check widget.
  List<OrderOlaRow>? orderitems;
  Completer<List<OrderOlaRow>>? requestCompleter;
  // State field(s) for disaccount widget.
  FocusNode? disaccountFocusNode;
  TextEditingController? disaccountTextController;
  String? Function(BuildContext, String?)? disaccountTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for moneyrecived widget.
  FocusNode? moneyrecivedFocusNode;
  TextEditingController? moneyrecivedTextController;
  String? Function(BuildContext, String?)? moneyrecivedTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<OrderOlaRow>? numoforder;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    disaccountFocusNode?.dispose();
    disaccountTextController?.dispose();

    moneyrecivedFocusNode?.dispose();
    moneyrecivedTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
