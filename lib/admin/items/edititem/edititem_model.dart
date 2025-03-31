import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'edititem_widget.dart' show EdititemWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EdititemModel extends FlutterFlowModel<EdititemWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for productname widget.
  FocusNode? productnameFocusNode;
  TextEditingController? productnameTextController;
  String? Function(BuildContext, String?)? productnameTextControllerValidator;
  // State field(s) for detail widget.
  FocusNode? detailFocusNode;
  TextEditingController? detailTextController;
  String? Function(BuildContext, String?)? detailTextControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for currency widget.
  String? currencyValue;
  FormFieldController<String>? currencyValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productnameFocusNode?.dispose();
    productnameTextController?.dispose();

    detailFocusNode?.dispose();
    detailTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
