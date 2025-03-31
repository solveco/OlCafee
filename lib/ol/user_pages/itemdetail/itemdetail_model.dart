import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/ol/components/bar_copy/bar_copy_widget.dart';
import 'dart:ui';
import 'itemdetail_widget.dart' show ItemdetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemdetailModel extends FlutterFlowModel<ItemdetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barCopy component.
  late BarCopyModel barCopyModel;

  @override
  void initState(BuildContext context) {
    barCopyModel = createModel(context, () => BarCopyModel());
  }

  @override
  void dispose() {
    barCopyModel.dispose();
  }
}
