import 'package:flutter/material.dart';
import '../widgets/band_view.dart';

import '../widgets/footer_view.dart';
import 'welcome_page.dart';

/// This is landing page
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      WelcomePage.navigate(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          _SplashScreenHeader(),
          Expanded(
            child: Center(
              child: BrandView(),
            ),
          ),
          FooterView(),
        ],
      ),
    );
  }
}

class _SplashScreenHeader extends StatelessWidget {
  const _SplashScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContainer(Color color) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(32),
          ),
        ),
      );
    }

    final colors = [
      const Color(0xFF1B192C),
      const Color(0xFF403D5F),
      const Color(0xFF938EAF),
    ].reversed.toList();

    return SizedBox(
      height: 220,
      child: Stack(
        fit: StackFit.expand,
        children: [
          for (int i = 0; i < colors.length; i++)
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: i * 45,
              child: buildContainer(
                colors[i],
              ),
            ),
        ],
      ),
    );
  }
}
