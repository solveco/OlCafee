import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'billdetail_widget.dart' show BilldetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BilldetailModel extends FlutterFlowModel<BilldetailWidget> {
  ///  Local state fields for this component.

  List<String> items = [];
  void addToItems(String item) => items.add(item);
  void removeFromItems(String item) => items.remove(item);
  void removeAtIndexFromItems(int index) => items.removeAt(index);
  void insertAtIndexInItems(int index, String item) =>
      items.insert(index, item);
  void updateItemsAtIndex(int index, Function(String) updateFn) =>
      items[index] = updateFn(items[index]);

  int? counter = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
