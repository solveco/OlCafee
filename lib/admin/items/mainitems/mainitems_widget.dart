import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mainitems_model.dart';
export 'mainitems_model.dart';

class MainitemsWidget extends StatefulWidget {
  const MainitemsWidget({super.key});

  static String routeName = 'mainitems';
  static String routePath = '/mainitems';

  @override
  State<MainitemsWidget> createState() => _MainitemsWidgetState();
}

class _MainitemsWidgetState extends State<MainitemsWidget> {
  late MainitemsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainitemsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ItemsOlaRow>>(
      future: ItemsOlaTable().queryRows(
        queryFn: (q) => q,
      ),
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
        List<ItemsOlaRow> mainitemsItemsOlaRowList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                context.pushNamed(AddmainitemWidget.routeName);
              },
              backgroundColor: FlutterFlowTheme.of(context).primary,
              elevation: 8.0,
              child: Icon(
                Icons.add_rounded,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  icon: Icon(
                                    Icons.chevron_left,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                        TabeltocheckWidget.routeName);
                                  },
                                ),
                                Text(
                                  'قائمة الأصناف',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'prada',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FutureBuilder<List<CategoriesOlaRow>>(
                                future: CategoriesOlaTable().queryRows(
                                  queryFn: (q) => q,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitDoubleBounce(
                                          color: Color(0xFF6FF9EC),
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<CategoriesOlaRow>
                                      listViewCategoriesOlaRowList =
                                      snapshot.data!;

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewCategoriesOlaRowList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewCategoriesOlaRow =
                                          listViewCategoriesOlaRowList[
                                              listViewIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 10.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Container(
                                                width: double.infinity,
                                                color: Color(0x00000000),
                                                child: ExpandableNotifier(
                                                  initialExpanded: false,
                                                  child: ExpandablePanel(
                                                    header: Material(
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
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
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  FlutterFlowIconButton(
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .error,
                                                                    borderRadius:
                                                                        20.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .delete_outline,
                                                                      color: Color(
                                                                          0xC3F44336),
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      var confirmDialogResponse = await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: Text('حذف الصنف'),
                                                                                content: Text('تحذير سيتم ازالة جميع المواد تحت الصنف المحذوف'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                    child: Text('إلغاء'),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                    child: Text('تأكيد'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                      if (confirmDialogResponse) {
                                                                        await ItemsOlaTable()
                                                                            .delete(
                                                                          matchingRows: (rows) =>
                                                                              rows.eqOrNull(
                                                                            'categories',
                                                                            listViewCategoriesOlaRow.name,
                                                                          ),
                                                                        );
                                                                        await CategoriesOlaTable()
                                                                            .delete(
                                                                          matchingRows: (rows) =>
                                                                              rows.eqOrNull(
                                                                            'id',
                                                                            listViewCategoriesOlaRow.id,
                                                                          ),
                                                                        );
                                                                      }
                                                                    },
                                                                  ),
                                                                  FlutterFlowIconButton(
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                    borderRadius:
                                                                        20.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .edit,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      context
                                                                          .pushNamed(
                                                                        EditmainitemWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'categoryrow':
                                                                              serializeParam(
                                                                            listViewCategoriesOlaRow,
                                                                            ParamType.SupabaseRow,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        8.0)),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            5.0),
                                                                    child:
                                                                        AnimatedDefaultTextStyle(
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'prada',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              600),
                                                                      curve: Curves
                                                                          .easeIn,
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          listViewCategoriesOlaRow
                                                                              .name,
                                                                          'الاسم',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.end,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          listViewCategoriesOlaRow
                                                                              .image,
                                                                          'https://images.unsplash.com/photo-1485629066172-81a49ed3aa29?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx3YWZlbHxlbnwwfHx8fDE3NDEwNTA5NDd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                                        ),
                                                                        width:
                                                                            65.0,
                                                                        height:
                                                                            65.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    collapsed: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            5.0),
                                                                child: Text(
                                                                  'مواد مرتبطة ضمن هذا التصنيف',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .end,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'prada',
                                                                        color: Color(
                                                                            0xE5000000),
                                                                        fontSize:
                                                                            13.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            5.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    mainitemsItemsOlaRowList
                                                                        .where((e) =>
                                                                            e.categories ==
                                                                            listViewCategoriesOlaRow.name)
                                                                        .toList()
                                                                        .length
                                                                        .toString(),
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
                                                                            'Readex Pro',
                                                                        color: Color(
                                                                            0xE5000000),
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    expanded: Padding(
                                                      padding:
                                                          EdgeInsets.all(5.0),
                                                      child: ListView(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(5.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final itemslist = mainitemsItemsOlaRowList
                                                                      .where((e) =>
                                                                          e.categories ==
                                                                          listViewCategoriesOlaRow
                                                                              .name)
                                                                      .toList();

                                                                  return Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: List.generate(
                                                                        itemslist
                                                                            .length,
                                                                        (itemslistIndex) {
                                                                      final itemslistItem =
                                                                          itemslist[
                                                                              itemslistIndex];
                                                                      return Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                10.0,
                                                                                5.0,
                                                                                10.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    FlutterFlowIconButton(
                                                                                      borderColor: FlutterFlowTheme.of(context).error,
                                                                                      borderRadius: 20.0,
                                                                                      buttonSize: 40.0,
                                                                                      icon: Icon(
                                                                                        Icons.delete_outline,
                                                                                        color: Color(0xC3F44336),
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        var confirmDialogResponse = await showDialog<bool>(
                                                                                              context: context,
                                                                                              builder: (alertDialogContext) {
                                                                                                return AlertDialog(
                                                                                                  title: Text('حذف المادة'),
                                                                                                  content: Text('سيتم حذف المادة بشكل نهائي'),
                                                                                                  actions: [
                                                                                                    TextButton(
                                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                      child: Text('إلغاء'),
                                                                                                    ),
                                                                                                    TextButton(
                                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                      child: Text('تأكيد'),
                                                                                                    ),
                                                                                                  ],
                                                                                                );
                                                                                              },
                                                                                            ) ??
                                                                                            false;
                                                                                        if (confirmDialogResponse) {
                                                                                          await ItemsTable().delete(
                                                                                            matchingRows: (rows) => rows.eqOrNull(
                                                                                              'id',
                                                                                              itemslistItem.id,
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                      },
                                                                                    ),
                                                                                    FlutterFlowIconButton(
                                                                                      borderColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      borderRadius: 20.0,
                                                                                      buttonSize: 40.0,
                                                                                      icon: Icon(
                                                                                        Icons.edit,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        context.pushNamed(
                                                                                          EdititemWidget.routeName,
                                                                                          queryParameters: {
                                                                                            'itemsrow': serializeParam(
                                                                                              itemslistItem,
                                                                                              ParamType.SupabaseRow,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 7.0)),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsets.all(5.0),
                                                                                      child: AnimatedDefaultTextStyle(
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'prada',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                        duration: Duration(milliseconds: 600),
                                                                                        curve: Curves.easeIn,
                                                                                        child: Text(
                                                                                          '${itemslistItem.price?.toString()}  ${itemslistItem.currency}',
                                                                                          textAlign: TextAlign.end,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.all(5.0),
                                                                                      child: AnimatedDefaultTextStyle(
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'prada',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                        duration: Duration(milliseconds: 600),
                                                                                        curve: Curves.easeIn,
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            itemslistItem.name,
                                                                                            'الاسم',
                                                                                          ),
                                                                                          textAlign: TextAlign.end,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      child: Image.network(
                                                                                        valueOrDefault<String>(
                                                                                          itemslistItem.image,
                                                                                          'https://images.unsplash.com/photo-1485629066172-81a49ed3aa29?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx3YWZlbHxlbnwwfHx8fDE3NDEwNTA5NDd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                                                        ),
                                                                                        width: 65.0,
                                                                                        height: 65.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }).divide(SizedBox(height: 5.0)).around(
                                                                        SizedBox(
                                                                            height:
                                                                                5.0)),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    icon: Icon(
                                                                      Icons.add,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      context
                                                                          .pushNamed(
                                                                        AdditemWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'category':
                                                                              serializeParam(
                                                                            listViewCategoriesOlaRow.name,
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    theme: ExpandableThemeData(
                                                      tapHeaderToExpand: true,
                                                      tapBodyToExpand: true,
                                                      tapBodyToCollapse: false,
                                                      headerAlignment:
                                                          ExpandablePanelHeaderAlignment
                                                              .center,
                                                      hasIcon: true,
                                                      expandIcon: Icons
                                                          .arrow_drop_down_sharp,
                                                      collapseIcon:
                                                          FontAwesomeIcons
                                                              .sortUp,
                                                      iconSize: 30.0,
                                                      iconColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
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
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
