import 'package:flutter/material.dart';

/// footer for auth  ui
class FooterView extends StatelessWidget {
  const FooterView({super.key, this.showDash = true});
  final bool showDash;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withAlpha(0),
            const Color(0xFF1B192C),
          ],
        ),
      ),
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 8),
      child: showDash
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 16; i < width - 16; i += (6 + 4 * 2))
                  Container(
                    height: 10,
                    width: 6,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    color: const Color(0xFF1B192C),
                  )
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
