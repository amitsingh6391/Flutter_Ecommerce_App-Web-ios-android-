import 'dart:async';

import 'package:assignment/presentation/pages/homepage.dart';
import 'package:assignment/presentation/routes/router.gr.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class Splashpage extends StatefulWidget {
  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      AutoRouter.of(context).replace(HomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height,
      maxWidth: MediaQuery.of(context).size.width,
    ));
    return Scaffold(
        body: Container(
      child: Lottie.asset(
        "assets/lottiefile/splashlogo.json",
        height: 1.sh,
        width: 1.sw,
        fit: BoxFit.fill,
      ),
    ));
  }
}
