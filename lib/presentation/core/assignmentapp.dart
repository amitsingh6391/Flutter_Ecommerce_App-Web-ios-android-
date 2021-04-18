import 'package:assignment/presentation/routes/router.gr.dart';
import 'package:assignment/presentation/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssignmentApp extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Academic master',
      debugShowCheckedModeBanner: false,
      theme: Apptheme.theme,
    );
  }
}
