import 'package:flutter/material.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    final borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color.shadow),
    );

    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: color.secondary,
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).colorScheme.inversePrimary,
                border: borderStyle,
                enabledBorder: borderStyle,
                focusedBorder: borderStyle,
                hintText: 'Search city, neighborhood...',
                hintStyle: TextStyle(color: color.secondary),
                prefixIcon: Icon(Icons.search, color: color.secondary),
              ),
            ),
          ),

          const SizedBox(width: 20),

          IconButton(
            onPressed: () => (),
            icon: Icon(Icons.tune_rounded, color: color.secondary),
            style: IconButton.styleFrom(
              padding: const EdgeInsets.all(12),
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: color.shadow),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
