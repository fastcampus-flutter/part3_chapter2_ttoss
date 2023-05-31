import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../main/s_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
      Nav.clearAllAndPush(const MainScreen());
    // delay((){
    // }, 1500.ms);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/image/splash/splash.png",
        width: 192,
        height: 192,
      ),
    );
  }
}
