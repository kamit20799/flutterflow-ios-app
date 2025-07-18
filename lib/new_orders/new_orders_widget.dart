import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'new_orders_model.dart';
export 'new_orders_model.dart';

class NewOrdersWidget extends StatefulWidget {
  const NewOrdersWidget({super.key});

  static String routeName = 'NewOrders';
  static String routePath = '/newOrders';

  @override
  State<NewOrdersWidget> createState() => _NewOrdersWidgetState();
}

class _NewOrdersWidgetState extends State<NewOrdersWidget> {
  late NewOrdersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewOrdersModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().cartId == '') {
        FFAppState().cartCount = 0;
        safeSetState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFCFF),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 20.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed(HomePageWidget.routeName);
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Text(
              'New Orders',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    font: GoogleFonts.outfit(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 24.0, 0.0),
                    child: badges.Badge(
                      badgeContent: Text(
                        FFAppState().cartCount.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.plusJakartaSans(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      showBadge: true,
                      shape: badges.BadgeShape.circle,
                      badgeColor: Color(0xFF425EF8),
                      elevation: 4.0,
                      padding: EdgeInsets.all(8.0),
                      position: badges.BadgePosition.topEnd(),
                      animationType: badges.BadgeAnimationType.scale,
                      toAnimate: true,
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        buttonSize: 48.0,
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 25.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(CartProductsWidget.routeName);
                        },
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 0.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: GetAllVendorsAPICall.call(
                                          authToken: FFAppState().token,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: SizedBox(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  child: SpinKitFadingFour(
                                                    color: Color(0xFF425EF8),
                                                    size: 30.0,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final dropDownGetAllVendorsAPIResponse =
                                              snapshot.data!;

                                          return FlutterFlowDropDown<int>(
                                            controller: _model
                                                    .dropDownValueController ??=
                                                FormFieldController<int>(
                                              _model.dropDownValue ??=
                                                  FFAppState().vendorStoreId,
                                            ),
                                            options: List<int>.from(
                                                GetAllVendorsAPICall
                                                    .vendorStoreId(
                                              dropDownGetAllVendorsAPIResponse
                                                  .jsonBody,
                                            )!),
                                            optionLabels:
                                                GetAllVendorsAPICall.vendorName(
                                              dropDownGetAllVendorsAPIResponse
                                                  .jsonBody,
                                            )!,
                                            onChanged: (val) async {
                                              safeSetState(() =>
                                                  _model.dropDownValue = val);
                                              FFAppState().vendorStoreId =
                                                  _model.dropDownValue!;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                  NewOrdersWidget.routeName);
                                            },
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts
                                                          .plusJakartaSans(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                            hintText: 'Select Your Distributor',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            borderWidth: 1.0,
                                            borderRadius: 8.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              if (FFAppState().vendorStoreId == 0)
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 5.0, 16.0, 0.0),
                                    child: PagedListView<ApiPagingParams,
                                        dynamic>.separated(
                                      pagingController:
                                          _model.setListViewController1(
                                        (nextPageMarker) =>
                                            GetProductsCall.call(
                                          page: nextPageMarker.nextPageNumber *
                                                  1 +
                                              1,
                                          storeId: 13,
                                        ),
                                      ),
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      reverse: false,
                                      scrollDirection: Axis.vertical,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 15.0),
                                      builderDelegate:
                                          PagedChildBuilderDelegate<dynamic>(
                                        // Customize what your widget looks like when it's loading the first page.
                                        firstPageProgressIndicatorBuilder:
                                            (_) => Center(
                                          child: SizedBox(
                                            width: 40.0,
                                            height: 40.0,
                                            child: SpinKitFadingFour(
                                              color: Color(0xFF425EF8),
                                              size: 40.0,
                                            ),
                                          ),
                                        ),
                                        // Customize what your widget looks like when it's loading another page.
                                        newPageProgressIndicatorBuilder: (_) =>
                                            Center(
                                          child: SizedBox(
                                            width: 40.0,
                                            height: 40.0,
                                            child: SpinKitFadingFour(
                                              color: Color(0xFF425EF8),
                                              size: 40.0,
                                            ),
                                          ),
                                        ),

                                        itemBuilder:
                                            (context, _, eachProductIndex) {
                                          final eachProductItem = _model
                                              .listViewPagingController1!
                                              .itemList![eachProductIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                ProductDetailWidget.routeName,
                                                queryParameters: {
                                                  'slug': serializeParam(
                                                    getJsonField(
                                                      eachProductItem,
                                                      r'''$.slug''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                  'id': serializeParam(
                                                    getJsonField(
                                                      eachProductItem,
                                                      r'''$.id''',
                                                    ),
                                                    ParamType.int,
                                                  ),
                                                  'price': serializeParam(
                                                    getJsonField(
                                                      eachProductItem,
                                                      r'''$.price''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                  'imageUrl': serializeParam(
                                                    getJsonField(
                                                      eachProductItem,
                                                      r'''$.image_url''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                  'description': serializeParam(
                                                    getJsonField(
                                                      eachProductItem,
                                                      r'''$.content''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                  'name': serializeParam(
                                                    getJsonField(
                                                      eachProductItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x1A000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            getJsonField(
                                                              eachProductItem,
                                                              r'''$.image_url''',
                                                            )?.toString(),
                                                            'https://img.freepik.com/free-vector/realistic-front-view-smartphone-mockup-mobile-iphone-purple-frame-with-blank-white-display-vector_90220-959.jpg',
                                                          ),
                                                          width: 80.0,
                                                          height: 80.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                getJsonField(
                                                                  eachProductItem,
                                                                  r'''$.name''',
                                                                )?.toString(),
                                                                'Oppo Reno13 5G',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Onest',
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        12.0),
                                                            child: Text(
                                                              '₹${getJsonField(
                                                                eachProductItem,
                                                                r'''$.price_formatted''',
                                                              ).toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Onest',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              if (FFAppState().vendorStoreId != 0)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: GetProductsCall.call(
                                        page: 1,
                                        storeId: FFAppState().vendorStoreId,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 40.0,
                                              height: 40.0,
                                              child: SpinKitFadingFour(
                                                color: Color(0xFF425EF8),
                                                size: 40.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewGetProductsResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final eachProduct = getJsonField(
                                              listViewGetProductsResponse
                                                  .jsonBody,
                                              r'''$.data''',
                                            ).toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: eachProduct.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 15.0),
                                              itemBuilder:
                                                  (context, eachProductIndex) {
                                                final eachProductItem =
                                                    eachProduct[
                                                        eachProductIndex];
                                                return Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        ProductDetailWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'slug':
                                                              serializeParam(
                                                            getJsonField(
                                                              eachProductItem,
                                                              r'''$.slug''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'id': serializeParam(
                                                            getJsonField(
                                                              eachProductItem,
                                                              r'''$.id''',
                                                            ),
                                                            ParamType.int,
                                                          ),
                                                          'price':
                                                              serializeParam(
                                                            getJsonField(
                                                              eachProductItem,
                                                              r'''$.price''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'imageUrl':
                                                              serializeParam(
                                                            getJsonField(
                                                              eachProductItem,
                                                              r'''$.image_url''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'description':
                                                              serializeParam(
                                                            getJsonField(
                                                              eachProductItem,
                                                              r'''$.content''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'name':
                                                              serializeParam(
                                                            getJsonField(
                                                              eachProductItem,
                                                              r'''$.name''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x1A000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            12.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    getJsonField(
                                                                      eachProductItem,
                                                                      r'''$.image_url''',
                                                                    )?.toString(),
                                                                    'https://img.freepik.com/free-vector/realistic-front-view-smartphone-mockup-mobile-iphone-purple-frame-with-blank-white-display-vector_90220-959.jpg',
                                                                  ),
                                                                  width: 80.0,
                                                                  height: 80.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            8.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        getJsonField(
                                                                          eachProductItem,
                                                                          r'''$.name''',
                                                                        )?.toString(),
                                                                        'Oppo Reno13 5G',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Onest',
                                                                            fontSize:
                                                                                18.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                    child: Text(
                                                                      '₹${getJsonField(
                                                                        eachProductItem,
                                                                        r'''$.price_formatted''',
                                                                      ).toString()}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Onest',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
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
              ],
            ),
            wrapWithModel(
              model: _model.navBarModel,
              updateCallback: () => safeSetState(() {}),
              child: NavBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
