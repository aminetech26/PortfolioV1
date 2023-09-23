import 'package:flutter/material.dart';
import 'dart:ui_web';
import 'package:portfolio/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(PortfolioWebsite(appRouter:AppRouter()));
}

class PortfolioWebsite extends StatelessWidget {
  const PortfolioWebsite({Key? key, required this.appRouter,}) : super(key: key);
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ahmed Amine GUERRAICHE - Software Developer',
          onGenerateRoute: appRouter.generateRoutes,
        );
      },
    );
  }
}

