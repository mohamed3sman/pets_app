import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pets_app/Features/AuthFeature/presentation/views/login_view/login_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  void _initializeApp() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const LoginView();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Lottie.asset('assets/images/splash_animation.json'),
    ));
  }
}
