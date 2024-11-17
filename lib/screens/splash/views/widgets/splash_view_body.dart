import 'package:flutter/material.dart';
import 'package:timer_app/core/utils/images_data.dart';
import 'package:timer_app/screens/home/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
        // late AnimationController animationController;

  @override
  void initState() {
    navigationControl();
    super.initState();
  }

  @override
  void dispose() {
    // animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(ImagesData.logo),
        const SizedBox(height: 20),
        const Text(
          'your effective',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 16),
        const Text(
          'TIMER',
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  navigationControl() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
        (route) => false,
      ),
    );
  }
}
