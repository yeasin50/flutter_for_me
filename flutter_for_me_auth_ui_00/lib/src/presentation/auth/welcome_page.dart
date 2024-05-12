import 'package:flutter/material.dart';

import '../widgets/band_view.dart';
import '../widgets/footer_view.dart';
import 'sign_in_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static Future<void> navigate(BuildContext context) async {
    await Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const WelcomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    void onSignIn() {
      SingInPage.navigate(context);
    }

    void onSignUp() {}

    return Scaffold(
      appBar: WelcomePageAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: BrandView(
                        showDash: false,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(165, 50),
                            backgroundColor: const Color(0xFF1B192C),
                            elevation: 0,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: onSignIn,
                          child: const Text("Sign In"),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(165, 50),
                            backgroundColor: const Color(0xFF1B192C),
                            elevation: 0,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: onSignUp,
                          child: const Text("Sign Up"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 36)
                ],
              ),
            ),
          ),
          const FooterView(
            showDash: false,
          ),
        ],
      ),
    );
  }
}

class WelcomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WelcomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const greeting =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad ";
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF1B192C),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Welcome",
            style: textTheme.headlineLarge?.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            greeting,
            style: textTheme.bodyLarge?.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(220);
}
