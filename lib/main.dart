import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:guvenle_kirala_study_case/app/app_configs.dart';
import 'package:guvenle_kirala_study_case/app/locator/locator.dart';
import 'package:guvenle_kirala_study_case/app/theme/theme_light.dart';
import 'package:guvenle_kirala_study_case/generated/l10n.dart';
import 'package:guvenle_kirala_study_case/utils/reset_focus.dart';
import 'package:layout/layout.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ** Easy Loading 
  //EasyLoading.instance.maskColor = Colors.grey.shade700;
  // ** Locator Initialize
  setupLocator();
  // ** Initial Overlay Color
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  // ** Run App
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        builder: (BuildContext context, Widget? child) {
          return Navigator(
            onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (context) {
                return GestureDetector(
                  onTap: ResetFocus().initFocus,
                  child: FlutterEasyLoading(child: child),
                );
              },
            ),
          );
        },
        //theme: lightTheme,
        localizationsDelegates: const [
          AppLocalizationDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('tr', 'TR'),
        supportedLocales: const [
          Locale('tr', 'TR'),
        ],
        theme: lightTheme,

        // ThemeData(
        //   snackBarTheme: SnackBarThemeData(
        //     backgroundColor: const Color(0xff3c20da),
        //     actionTextColor: const Color(0xffd8d3f8),
        //     disabledActionTextColor: const Color(0x66c8c8c8),
        //     contentTextStyle:
        //         const TextStyle(color: Color(0xfffafafa), fontSize: 14),
        //     shape: RoundedRectangleBorder(
        //         borderRadius:
        //             BorderRadius.circular(AppDefaults.kStandartBorderRadius)),
        //     behavior: SnackBarBehavior.floating,
        //     elevation: 3,
        //   ),
        // ),
        scaffoldMessengerKey: AppConfigs.rootScaffoldMessengerKey,
        routerDelegate: AppConfigs.appRouter.delegate(
          navigatorObservers: () => [AutoRouteObserver()],
        ),
        routeInformationParser: AppConfigs.appRouter.defaultRouteParser(),
      ),
    );
  }
}
