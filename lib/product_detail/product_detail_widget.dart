import '/backend/api_requests/api_calls.dart';
import '/components/attribute_dropdown_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_detail_model.dart';
export 'product_detail_model.dart';

class ProductDetailWidget extends StatefulWidget {
  const ProductDetailWidget({
    super.key,
    required this.slug,
    required this.id,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.name,
    String? attributesValue,
  }) : this.attributesValue = attributesValue ?? 'null';

  final String? slug;
  final int? id;
  final String? price;
  final String? imageUrl;
  final String? description;
  final String? name;
  final String attributesValue;

  static String routeName = 'productDetail';
  static String routePath = '/productDetail';

  @override
  State<ProductDetailWidget> createState() => _ProductDetailWidgetState();
}

class _ProductDetailWidgetState extends State<ProductDetailWidget>
    with TickerProviderStateMixin {
  late ProductDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: ProductDetailAPICall.call(
        slug: widget.slug,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: SpinKitFadingFour(
                  color: Color(0xFF425EF8),
                  size: 40.0,
                ),
              ),
            ),
          );
        }
        final productDetailProductDetailAPIResponse = snapshot.data!;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(NewOrdersWidget.routeName);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
            title: Text(
              ' ',
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.lexendDeca(
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: Color(0xFF151B1E),
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 24.0, 0.0),
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
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
            ],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Hero(
                                  tag: getJsonField(
                                    productDetailProductDetailAPIResponse
                                        .jsonBody,
                                    r'''$.data.image_url''',
                                  ).toString(),
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      getJsonField(
                                        productDetailProductDetailAPIResponse
                                            .jsonBody,
                                        r'''$.data.image_url''',
                                      ).toString(),
                                      width: double.infinity,
                                      height: 280.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  getJsonField(
                                    productDetailProductDetailAPIResponse
                                        .jsonBody,
                                    r'''$.data.name''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 16.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    functions.stripHtmlTags(getJsonField(
                                      productDetailProductDetailAPIResponse
                                          .jsonBody,
                                      r'''$.data.content''',
                                    ).toString()),
                                    '6.1-inch display',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation']!),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        getJsonField(
                                          productDetailProductDetailAPIResponse
                                              .jsonBody,
                                          r'''$.data.price_formatted''',
                                        ).toString(),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: 130.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: FlutterFlowCountController(
                                        decrementIconBuilder: (enabled) => Icon(
                                          Icons.remove_rounded,
                                          color: enabled
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          size: 16.0,
                                        ),
                                        incrementIconBuilder: (enabled) => Icon(
                                          Icons.add_rounded,
                                          color: enabled
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          size: 16.0,
                                        ),
                                        countBuilder: (count) => Text(
                                          count.toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font: GoogleFonts.outfit(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                        count: _model.countControllerValue ??=
                                            1,
                                        updateCount: (count) => safeSetState(
                                            () => _model.countControllerValue =
                                                count),
                                        stepSize: 1,
                                        minimum: 1,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation']!),
                              ),
                              if (functions.checkArrayLength(getJsonField(
                                    productDetailProductDetailAPIResponse
                                        .jsonBody,
                                    r'''$.attribute_sets''',
                                  )) !=
                                  'Array is empty')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: ProductDetailAPICall.call(
                                        slug: widget.slug,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 30.0,
                                              height: 30.0,
                                              child: SpinKitFadingFour(
                                                color: Color(0xFF425EF8),
                                                size: 30.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final wrapProductDetailAPIResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final attributeItem = getJsonField(
                                              wrapProductDetailAPIResponse
                                                  .jsonBody,
                                              r'''$.attribute_sets''',
                                            ).toList();

                                            return Wrap(
                                              spacing: 18.0,
                                              runSpacing: 18.0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: List.generate(
                                                  attributeItem.length,
                                                  (attributeItemIndex) {
                                                final attributeItemItem =
                                                    attributeItem[
                                                        attributeItemIndex];
                                                return Container(
                                                  width: 170.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child:
                                                      AttributeDropdownWidget(
                                                    key: Key(
                                                        'Keyjwy_${attributeItemIndex}_of_${attributeItem.length}'),
                                                    label: getJsonField(
                                                      attributeItemItem,
                                                      r'''$.title''',
                                                    ).toString(),
                                                    options: getJsonField(
                                                      attributeItemItem,
                                                      r'''$.attributes[:].title''',
                                                      true,
                                                    ),
                                                    index: getJsonField(
                                                      attributeItemItem,
                                                      r'''$.id''',
                                                    ),
                                                    selectedAttributes: _model
                                                        .selectedAttributes,
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 20.0, 16.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (FFAppState().cartId == '') {
                                        _model.cartResponse =
                                            await AddToCartCall.call(
                                          productId: widget.id,
                                          quantity: _model.countControllerValue,
                                        );

                                        if ((_model.cartResponse?.succeeded ??
                                            true)) {
                                          _model.getCartitemsResponse =
                                              await GetCartItemsAPICall.call(
                                            id: getJsonField(
                                              (_model.cartResponse?.jsonBody ??
                                                  ''),
                                              r'''$.id''',
                                            ).toString(),
                                          );

                                          if ((_model.getCartitemsResponse
                                                  ?.succeeded ??
                                              true)) {
                                            FFAppState().cartId = getJsonField(
                                              (_model.cartResponse?.jsonBody ??
                                                  ''),
                                              r'''$.id''',
                                            ).toString();
                                            FFAppState().cartCount =
                                                getJsonField(
                                              (_model.getCartitemsResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.count''',
                                            );
                                            safeSetState(() {});
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Product added to cart sucessfully..!',
                                                  style: TextStyle(
                                                    fontFamily: 'Onest',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 13.0,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Something went wrong, try again',
                                                  style: TextStyle(
                                                    fontFamily: 'Onest',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 13.0,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                          }
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Product not added to cart..!!',
                                                style: TextStyle(
                                                  fontFamily: 'Onest',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontSize: 13.0,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                        }
                                      } else {
                                        _model.updateCartResponse =
                                            await UpdateCartAPICall.call(
                                          productId: widget.id,
                                          quantity: _model.countControllerValue,
                                          cartId: FFAppState().cartId,
                                        );

                                        if ((_model.updateCartResponse
                                                ?.succeeded ??
                                            true)) {
                                          _model.apiResulteac =
                                              await GetCartItemsAPICall.call(
                                            id: getJsonField(
                                              (_model.updateCartResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.id''',
                                            ).toString(),
                                          );

                                          if ((_model.apiResulteac?.succeeded ??
                                              true)) {
                                            FFAppState().cartCount =
                                                getJsonField(
                                              (_model.apiResulteac?.jsonBody ??
                                                  ''),
                                              r'''$.count''',
                                            );
                                            safeSetState(() {});
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Product updated to cart sucessfully..!',
                                                  style: TextStyle(
                                                    fontFamily: 'Onest',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 13.0,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Product not to cart, try again.',
                                                  style: TextStyle(
                                                    fontFamily: 'Onest',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 13.0,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                          }
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Product not updated..!',
                                                style: TextStyle(
                                                  fontFamily: 'Onest',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontSize: 13.0,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                        }
                                      }

                                      safeSetState(() {});
                                    },
                                    text: 'Add to Cart',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF425EF8),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Onest',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(28.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
