import 'package:dwello/components/icon_text.dart';
import 'package:dwello/house_list.dart';
import 'package:flutter/material.dart';

class HouseListing extends StatelessWidget {
  const HouseListing({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: houseList.map((house) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Property image and price
                Stack(
                  children: [
                    // Property image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        house['image']!,
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // Price badge
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: colors.tertiary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          house['price']!,
                          style: TextStyle(color: colors.primary, fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // Property info
                Text(
                  house['name']!,
                  style: TextStyle(
                    color: colors.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Text(
                  house['address']!,
                  style: TextStyle(color: colors.secondary),
                ),
                const SizedBox(height: 6),

                // Icons row
                Row(
                  children: [
                    IconText(
                      icon: Icons.bed_outlined,
                      text: house['bedrooms']!,
                    ),

                    const SizedBox(width: 10),

                    IconText(
                      icon: Icons.bathtub_outlined,
                      text: house['bathrooms']!,
                    ),

                    const SizedBox(width: 10),

                    IconText(
                      icon: Icons.straighten,
                      text: house['squareFeet']!,
                    ),
                  ],
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
