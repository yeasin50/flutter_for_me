import 'package:flutter/material.dart';

/// just to show the name/logo and title
class BrandView extends StatelessWidget {
  const BrandView({
    super.key,
    this.showDash = true,
  });
  final bool showDash;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "AITCHKE",
            textAlign: TextAlign.center,
            style: theme.displayMedium?.copyWith(
              letterSpacing: 4,
            ),
          ),
          Text(
            "DESIGN SOLUTION",
            textAlign: TextAlign.center,
            style: theme.bodyLarge?.copyWith(
              letterSpacing: 4,
            ),
          ),
          if (showDash) ...[
            const SizedBox(height: 16),
            const _BrandDashLine(),
          ]
        ],
      ),
    );
  }
}

class _BrandDashLine extends StatelessWidget {
  const _BrandDashLine({super.key});

  @override
  Widget build(BuildContext context) {
    const Color color = Color(0xFF938EAF);
    final extendedLine = Expanded(
      child: Container(
        color: const Color(0xFFD9D9D9),
      ),
    );
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        height: 7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            extendedLine,
            Container(
              height: 10,
              width: 2,
              color: color,
            ),
            ...List.generate(
              14,
              (index) => Container(
                height: 10,
                width: 4,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                color: color,
              ),
            ),
            Container(
              height: 10,
              width: 2,
              color: color,
            ),
            extendedLine
          ],
        ),
      ),
    );
  }
}
