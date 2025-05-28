import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'splash_screen1_model.dart';
export 'splash_screen1_model.dart';

class SplashScreen1Widget extends StatefulWidget {
  const SplashScreen1Widget({super.key});

  static String routeName = 'SplashScreen1';
  static String routePath = '/splashScreen1';

  @override
  State<SplashScreen1Widget> createState() => _SplashScreen1WidgetState();
}

class _SplashScreen1WidgetState extends State<SplashScreen1Widget> {
  late SplashScreen1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashScreen1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed(SplashScreen2Widget.routeName);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/shutterstock_2201606527@3x.png',
              ).image,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(SplashScreen2Widget.routeName);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SvgPicture.asset(
                  'assets/images/Group_2560.svg',
                  width: 245.0,
                  height: 158.0,
                  fit: BoxFit.contain,
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
