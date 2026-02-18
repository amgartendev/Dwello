import 'package:flutter/material.dart';

class BuyRentButtons extends StatelessWidget {
  const BuyRentButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color.inversePrimary,
        border: BoxBorder.all(color: color.shadow),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () => (),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                  elevation: 0,
                ),
                child: TextButton.icon(
                  onPressed: () => (),
                  label: Text('Buy', style: TextStyle(color: color.primary)),
                  icon: Icon(Icons.key, color: color.primary, size: 20),
                ),
              ),
            ),

            Expanded(
              child: ElevatedButton(
                onPressed: () => (),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                  elevation: 0,
                ),
                child: TextButton.icon(
                  onPressed: () => (),
                  label: Text('Rent', style: TextStyle(color: color.primary)),
                  icon: Icon(Icons.house, color: color.primary, size: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
