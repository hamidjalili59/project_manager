import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/presentations/auth/pages/auth_page.dart';
import 'package:base_project/src/presentations/home/pages/home_page.dart';
import 'package:base_project/src/presentations/schedule_detail/pages/schedule_page.dart';
import 'package:base_project/src/presentations/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute<SplashPage>(
    path: "/splash",
    initial: true,
    page: SplashPage, //replace your route Widget
  ),
  AutoRoute<AuthPage>(
    path: "/auth",
    page: AuthPage, //replace your route Widget
  ),
  AutoRoute<HomePage>(
    path: "/home",
    page: HomePage, //replace your route Widget
  ),
  AutoRoute<SchedulePage>(
    path: "/schdule",
    page: SchedulePage, //replace your route Widget
  ),
  // CustomRoute<Container>(
  //   path: "/custom_page",
  //   page: Container,//replace your route Widget
  //   transitionsBuilder: TransitionsBuilders.fadeIn,
  //   durationInMilliseconds: 500,
  //   reverseDurationInMilliseconds: 500,
  // ),
])
class AppRouter extends _$AppRouter {}
