import 'package:flutter/material.dart';

class NewSection extends StatelessWidget {
  const NewSection({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: color.primary,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),

        TextButton.icon(
          onPressed: () => (),
          label: Text('View all', style: TextStyle(color: color.secondary)),
          icon: Icon(Icons.chevron_right, color: color.secondary),
          iconAlignment: IconAlignment.end,
        ),
      ],
    );
  }
}
