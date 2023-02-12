import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Application extends StatelessWidget {
  Application({super.key});

  final _appRouter = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: GeneralConstants.defaultDesignSize,
        minTextAdapt: true,
        builder: (_, __) {
          return MaterialApp.router(
            themeMode: ThemeMode.dark,

            /// this theme data will be change dark theme
            darkTheme: ThemeData(
              useMaterial3: true,
              // colorSchemeSeed: GeneralConstants.colorSchemeSeedDark,
              colorScheme: const ColorScheme(
                  brightness: Brightness.dark,
                  primary: Color.fromARGB(255, 204, 8, 116),
                  onPrimary: Colors.orange,
                  secondary: Colors.blue,
                  onSecondary: Colors.black,
                  error: Colors.white,
                  onError: Colors.red,
                  background: Color(0xff0f1319),
                  onBackground: Color(0xff191D27),
                  surface: Colors.grey,
                  onSurface: Color(0xff1F2329)),
              textTheme: Theme.of(context).textTheme.apply(
                    bodyColor: Colors.white,
                    displayColor: Colors.white,
                  ),
            ),

            /// this theme data will be change light theme
            theme: ThemeData(
              useMaterial3: true,
              colorSchemeSeed: GeneralConstants.colorSchemeSeedLight,
              textTheme: Theme.of(context).textTheme.apply(
                    bodyColor: Colors.black,
                    displayColor: Colors.black,
                  ),
            ),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
