import 'package:flutter/material.dart';
import 'package:timer_app/screens/splash/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0XFFEFEDEE);
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SplashViewBody(),
      ),
    );
  }
}
