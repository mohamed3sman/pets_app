import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:pets_app/Features/splash_view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomIn(child: const SplashViewBody()),
    );
  }
}
