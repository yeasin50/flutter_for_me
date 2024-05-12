import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({super.key});

  static void navigate(BuildContext context) {
    final route = MaterialPageRoute(
      builder: (context) => const SingInPage(),
    );
    Navigator.of(context).push(route);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1B192C),
      appBar: _AppBar(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(child: SingInCard()),
                SizedBox(height: 64),
                BottomAction(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomAction extends StatelessWidget {
  const BottomAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.grey,
              minimumSize: Size(double.maxFinite, 64),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                const SizedBox(width: 8),
                Text("Continue with Google"),
              ],
            ),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.grey,
              minimumSize: Size(double.maxFinite, 64),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                SizedBox(width: 8),
                Text("Continue with Facebook"),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                      left: 4, right: 8, top: 8, bottom: 8),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0xFF6A67E8),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class SingInCard extends StatelessWidget {
  const SingInCard({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(34),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );

    InputDecoration textFiledDecoration(String hint) => InputDecoration(
          border: border,
          fillColor: const Color(0xFFE9E9E9),
          filled: true,
          enabledBorder: border,
          focusedBorder: border,
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xFFBBBBBB)),
        );
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: const Color(0xFFFCFCFC),
      ),
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            decoration: textFiledDecoration("Email/Phone number"),
          ),
          const SizedBox(height: 24),
          TextFormField(
            decoration: textFiledDecoration("Password"),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text("Forgot Password!"),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1B192C),
              minimumSize: const Size(double.infinity, 56),
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: const Text("Sign In"),
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const greeting =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis";
    return Padding(
      padding: const EdgeInsets.all(24.0),
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
  Size get preferredSize => Size.fromHeight(220);
}
