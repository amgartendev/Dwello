import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText({required this.icon, required this.text, super.key});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Row(
      children: [
        Icon(icon, color: colors.secondary, size: 18),

        const SizedBox(width: 4),

        Text(text, style: TextStyle(color: colors.secondary)),
      ],
    );
  }
}
