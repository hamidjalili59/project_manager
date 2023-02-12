import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/constants/png_assets.dart';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).whenComplete(
      () {
        if (GeneralConstants.isLoggedIn) {
          getIt.get<AppRouter>().pushNamed('/home');
        } else {
          getIt.get<AppRouter>().pushNamed('/auth');
        }
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 0.5.sw,
                height: 0.3.sh,
                child: Image.asset(PngAssets.iconDark, fit: BoxFit.cover),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.0.r),
                child: SizedBox(
                  width: 0.25.sw,
                  child: const LinearProgressIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
