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
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'check_model.dart';
export 'check_model.dart';

class CheckWidget extends StatefulWidget {
  const CheckWidget({
    super.key,
    required this.tabelnuber,
  });

  final String? tabelnuber;

  static String routeName = 'check';
  static String routePath = '/check';

  @override
  State<CheckWidget> createState() => _CheckWidgetState();
}

class _CheckWidgetState extends State<CheckWidget> {
  late CheckModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.orderitems = await OrderOlaTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'tabelnumber',
          widget!.tabelnuber,
        ),
      );
      _model.invoicenumber =
          dateTimeFormat("yyMMddHHmmss", getCurrentTimestamp);
      safeSetState(() {});
      FFAppState().disaccountinvoice = DisaccountinvoiceStruct(
        additionaldisaccount: valueOrDefault<double>(
          double.tryParse(_model.disaccountTextController.text),
          0.0,
        ),
      );
      safeSetState(() {});
    });

    _model.disaccountTextController ??= TextEditingController(text: '0');
    _model.disaccountFocusNode ??= FocusNode();

    _model.moneyrecivedTextController ??= TextEditingController(text: '0');
    _model.moneyrecivedFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<OrderOlaRow>>(
      future: (_model.requestCompleter ??= Completer<List<OrderOlaRow>>()
            ..complete(OrderOlaTable().queryRows(
              queryFn: (q) => q.eqOrNull(
                'tabelnumber',
                widget!.tabelnuber,
              ),
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitDoubleBounce(
                  color: Color(0xFF6FF9EC),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<OrderOlaRow> checkOrderOlaRowList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 900.0,
                  ),
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            _model.invoicenumber,
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Text(
                                          'رقم الفاتورة',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      dateTimeFormat("Hm", getCurrentTimestamp),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 5.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'OL Cafee',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'prada',
                                            color: Color(0xFFAD8B6D),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            widget!.tabelnuber,
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Text(
                                          ' فاتورة الطاولة رقم',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'prada',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(height: 5.0)),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 24.0, 24.0, 24.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: 400.0,
                                        decoration: BoxDecoration(),
                                        child: Builder(
                                          builder: (context) {
                                            final items =
                                                checkOrderOlaRowList.toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              scrollDirection: Axis.vertical,
                                              itemCount: items.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 8.0),
                                              itemBuilder:
                                                  (context, itemsIndex) {
                                                final itemsItem =
                                                    items[itemsIndex];
                                                return Material(
                                                  color: Colors.transparent,
                                                  elevation: 1.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  10.0,
                                                                  5.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              var confirmDialogResponse =
                                                                  await showDialog<
                                                                          bool>(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                Text('حذف صنف من الفاتورة'),
                                                                            content:
                                                                                Text('سيتم حذف الصنف من الفاتورة بشكل نهائي'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                child: Text('الغاء'),
                                                                              ),
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                child: Text('تاكد'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      ) ??
                                                                      false;
                                                              if (confirmDialogResponse) {
                                                                await OrderTable()
                                                                    .delete(
                                                                  matchingRows:
                                                                      (rows) =>
                                                                          rows.eqOrNull(
                                                                    'id',
                                                                    itemsItem
                                                                        .id,
                                                                  ),
                                                                );
                                                                safeSetState(() =>
                                                                    _model.requestCompleter =
                                                                        null);
                                                                await _model
                                                                    .waitForRequestCompleted();
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .delete_outline_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                itemsItem
                                                                    .totalcost
                                                                    ?.toString(),
                                                                '0',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'prada',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                          ))
                                                            Expanded(
                                                              flex: 1,
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  itemsItem
                                                                      .quantity
                                                                      ?.toString(),
                                                                  '0',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'prada',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                          ))
                                                            Expanded(
                                                              flex: 1,
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  itemsItem
                                                                      .price
                                                                      ?.toString(),
                                                                  '0',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'prada',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          Expanded(
                                                            flex: 2,
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                itemsItem.name,
                                                                'المادة',
                                                              ),
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'prada',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 4.0, 24.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      functions
                                                          .sumlist(
                                                              checkOrderOlaRowList
                                                                  .map((e) => e
                                                                      .totalcost)
                                                                  .withoutNulls
                                                                  .toList())
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'prada',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'مجمل الفاتورة',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'prada',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'الخصم',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'prada',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Wrap(
                                        spacing: 10.0,
                                        runSpacing: 10.0,
                                        alignment: WrapAlignment.end,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          if (_model.choiceChipsValue != null &&
                                              _model.choiceChipsValue != '')
                                            Container(
                                              width: 250.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .disaccountTextController,
                                                focusNode:
                                                    _model.disaccountFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'قيمة الحسم',
                                                  hintText: 'أدخل قيمة الحسم',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'prada',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: false,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'prada',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: false,
                                                        ),
                                                textAlign: TextAlign.end,
                                                minLines: 1,
                                                keyboardType:
                                                    TextInputType.number,
                                                validator: _model
                                                    .disaccountTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          FlutterFlowChoiceChips(
                                            options: [
                                              ChipData('مبلغ'),
                                              ChipData('نسبة')
                                            ],
                                            onChanged: (val) => safeSetState(
                                                () => _model.choiceChipsValue =
                                                    val?.firstOrNull),
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  Color(0xFFAD8B6D),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'prada',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 18.0,
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'prada',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 18.0,
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            chipSpacing: 8.0,
                                            rowSpacing: 8.0,
                                            multiselect: false,
                                            alignment: WrapAlignment.start,
                                            controller: _model
                                                    .choiceChipsValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [],
                                            ),
                                            wrapped: true,
                                          ),
                                        ],
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'الدفع',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'prada',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              () {
                                                if ((_model.disaccountTextController
                                                                .text !=
                                                            null &&
                                                        _model.disaccountTextController
                                                                .text !=
                                                            '') &&
                                                    (_model.choiceChipsValue ==
                                                        'مبلغ')) {
                                                  return valueOrDefault<String>(
                                                    ((functions.sumlist(
                                                                checkOrderOlaRowList
                                                                    .map((e) => e
                                                                        .totalcost)
                                                                    .withoutNulls
                                                                    .toList())!) -
                                                            double.parse(_model
                                                                .disaccountTextController
                                                                .text))
                                                        .toString(),
                                                    '0',
                                                  );
                                                } else if ((_model
                                                                .disaccountTextController
                                                                .text !=
                                                            null &&
                                                        _model.disaccountTextController
                                                                .text !=
                                                            '') &&
                                                    (_model.choiceChipsValue ==
                                                        'نسبة')) {
                                                  return valueOrDefault<String>(
                                                    ((functions.sumlist(
                                                                checkOrderOlaRowList
                                                                    .map((e) => e
                                                                        .totalcost)
                                                                    .withoutNulls
                                                                    .toList())!) -
                                                            ((functions.sumlist(checkOrderOlaRowList
                                                                        .map((e) => e
                                                                            .totalcost)
                                                                        .withoutNulls
                                                                        .toList())!) *
                                                                    double.parse(_model
                                                                        .disaccountTextController
                                                                        .text)) /
                                                                100)
                                                        .toString(),
                                                    '0',
                                                  );
                                                } else {
                                                  return functions
                                                      .sumlist(
                                                          checkOrderOlaRowList
                                                              .map((e) =>
                                                                  e.totalcost)
                                                              .withoutNulls
                                                              .toList())
                                                      ?.toString();
                                                }
                                              }(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'prada',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Text(
                                            'المبلغ الكامل',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'prada',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller:
                                              _model.moneyrecivedTextController,
                                          focusNode:
                                              _model.moneyrecivedFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.moneyrecivedTextController',
                                            Duration(milliseconds: 1000),
                                            () => safeSetState(() {}),
                                          ),
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'المبلغ المستلم',
                                            hintText: 'المبلغ المستلم',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'prada',
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      useGoogleFonts: false,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'prada',
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: false,
                                              ),
                                          textAlign: TextAlign.end,
                                          minLines: 1,
                                          keyboardType: TextInputType.number,
                                          validator: _model
                                              .moneyrecivedTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              (valueOrDefault<double>(
                                                        double.tryParse(_model
                                                            .moneyrecivedTextController
                                                            .text),
                                                        0.0,
                                                      ) -
                                                      valueOrDefault<double>(
                                                        () {
                                                          if ((_model.disaccountTextController
                                                                          .text !=
                                                                      null &&
                                                                  _model.disaccountTextController
                                                                          .text !=
                                                                      '') &&
                                                              (_model.choiceChipsValue ==
                                                                  'مبلغ')) {
                                                            return valueOrDefault<
                                                                double>(
                                                              (functions.sumlist(checkOrderOlaRowList
                                                                      .map((e) => e
                                                                          .totalcost)
                                                                      .withoutNulls
                                                                      .toList())!) -
                                                                  double.parse(_model
                                                                      .disaccountTextController
                                                                      .text),
                                                              0.0,
                                                            );
                                                          } else if ((_model
                                                                          .disaccountTextController
                                                                          .text !=
                                                                      null &&
                                                                  _model.disaccountTextController
                                                                          .text !=
                                                                      '') &&
                                                              (_model.choiceChipsValue ==
                                                                  'نسبة')) {
                                                            return valueOrDefault<
                                                                double>(
                                                              (functions.sumlist(checkOrderOlaRowList
                                                                      .map((e) => e
                                                                          .totalcost)
                                                                      .withoutNulls
                                                                      .toList())!) -
                                                                  ((functions.sumlist(checkOrderOlaRowList
                                                                              .map((e) => e
                                                                                  .totalcost)
                                                                              .withoutNulls
                                                                              .toList())!) *
                                                                          double.parse(_model
                                                                              .disaccountTextController
                                                                              .text)) /
                                                                      100,
                                                              0.0,
                                                            );
                                                          } else {
                                                            return functions.sumlist(
                                                                checkOrderOlaRowList
                                                                    .map((e) =>
                                                                        e.totalcost)
                                                                    .withoutNulls
                                                                    .toList());
                                                          }
                                                        }(),
                                                        0.0,
                                                      ))
                                                  .toString(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'prada',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Text(
                                            'المبلغ المتبقي',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'prada',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                        TabeltocheckWidget.routeName);
                                  },
                                  text: 'تراجع',
                                  icon: Icon(
                                    Icons.arrow_back,
                                    size: 25.0,
                                  ),
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.25,
                                    height: 56.0,
                                    padding: EdgeInsets.all(8.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFFAD8B6D),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'prada',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    elevation: 3.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.numoforder =
                                        await OrderOlaTable().queryRows(
                                      queryFn: (q) => q.eqOrNull(
                                        'tabelnumber',
                                        widget!.tabelnuber,
                                      ),
                                    );
                                    FFAppState().updateDisaccountinvoiceStruct(
                                      (e) => e
                                        ..totalinvoice = valueOrDefault<double>(
                                          () {
                                            if ((_model.disaccountTextController
                                                            .text !=
                                                        null &&
                                                    _model.disaccountTextController
                                                            .text !=
                                                        '') &&
                                                (_model.choiceChipsValue ==
                                                    'مبلغ')) {
                                              return valueOrDefault<double>(
                                                (functions.sumlist(
                                                        checkOrderOlaRowList
                                                            .map((e) =>
                                                                e.totalcost)
                                                            .withoutNulls
                                                            .toList())!) -
                                                    double.parse(_model
                                                        .disaccountTextController
                                                        .text),
                                                0.0,
                                              );
                                            } else if ((_model
                                                            .disaccountTextController
                                                            .text !=
                                                        null &&
                                                    _model.disaccountTextController
                                                            .text !=
                                                        '') &&
                                                (_model.choiceChipsValue ==
                                                    'نسبة')) {
                                              return valueOrDefault<double>(
                                                (functions.sumlist(
                                                        checkOrderOlaRowList
                                                            .map((e) =>
                                                                e.totalcost)
                                                            .withoutNulls
                                                            .toList())!) -
                                                    ((functions.sumlist(
                                                                checkOrderOlaRowList
                                                                    .map((e) => e
                                                                        .totalcost)
                                                                    .withoutNulls
                                                                    .toList())!) *
                                                            double.parse(_model
                                                                .disaccountTextController
                                                                .text)) /
                                                        100,
                                                0.0,
                                              );
                                            } else {
                                              return functions.sumlist(
                                                  checkOrderOlaRowList
                                                      .map((e) => e.totalcost)
                                                      .withoutNulls
                                                      .toList());
                                            }
                                          }(),
                                          0.0,
                                        ),
                                    );
                                    safeSetState(() {});
                                    await InvoicelistOlaTable().insert({
                                      'invoice': _model.invoicenumber,
                                      'total': FFAppState()
                                          .disaccountinvoice
                                          .totalinvoice,
                                      'tabelnumber': widget!.tabelnuber,
                                    });
                                    while (_model.sellcounter! <
                                        valueOrDefault<int>(
                                          _model.numoforder?.length,
                                          0,
                                        )) {
                                      await SellsOlaTable().insert({
                                        'name': _model.numoforder
                                            ?.elementAtOrNull(
                                                _model.sellcounter!)
                                            ?.name,
                                        'category': _model.numoforder
                                            ?.elementAtOrNull(
                                                _model.sellcounter!)
                                            ?.category,
                                        'price': _model.numoforder
                                            ?.elementAtOrNull(
                                                _model.sellcounter!)
                                            ?.price,
                                        'numberitem': _model.numoforder
                                            ?.elementAtOrNull(
                                                _model.sellcounter!)
                                            ?.quantity,
                                        'totalprice': _model.numoforder
                                            ?.elementAtOrNull(
                                                _model.sellcounter!)
                                            ?.totalcost,
                                        'tabelnumber': _model.numoforder
                                            ?.elementAtOrNull(
                                                _model.sellcounter!)
                                            ?.tabelnumber,
                                        'invoiceno': _model.invoicenumber,
                                        'disaccount': double.tryParse(_model
                                            .disaccountTextController.text),
                                        'typeofaddtionaldisaccount':
                                            _model.choiceChipsValue,
                                      });
                                      _model.sellcounter =
                                          _model.sellcounter! + 1;
                                      safeSetState(() {});
                                    }
                                    _model.sellcounter = 0;
                                    safeSetState(() {});
                                    await OrderOlaTable().delete(
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'tabelnumber',
                                        _model.orderitems?.firstOrNull
                                            ?.tabelnumber,
                                      ),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'تم الترحيل',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                      ),
                                    );

                                    context.pushNamed(
                                        TabeltocheckWidget.routeName);

                                    safeSetState(() {});
                                  },
                                  text: 'حفظ ',
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.25,
                                    height: 56.0,
                                    padding: EdgeInsets.all(8.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFFAD8B6D),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'prada',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    elevation: 3.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]
                            .divide(SizedBox(height: 15.0))
                            .around(SizedBox(height: 15.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
