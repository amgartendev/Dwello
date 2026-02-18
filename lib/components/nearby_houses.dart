import 'package:dwello/components/icon_text.dart';
import 'package:flutter/material.dart';

class NearbyHouses extends StatelessWidget {
  const NearbyHouses({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    final nearbyHouseList = [
      {
        'image': 'assets/images/properties/dwell_5.png',
        'name': 'Desert Oasis',
        'address': '3500 Canyon Rd, Salt Lake City, Utah',
        'bedrooms': '5',
        'bathrooms': '4',
        'squareFeet': '3,500',
        'price': '\$9,800',
      },
      {
        'image': 'assets/images/properties/dwell_6.png',
        'name': 'Charming Flat',
        'address': '15 Abbey Rd, London',
        'bedrooms': '2',
        'bathrooms': '1',
        'squareFeet': '950',
        'price': '\$4,200',
      },
    ];

    return SingleChildScrollView(
      child: Column(
        children: nearbyHouseList.map((house) {
          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: color.inversePrimary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Property image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      house['image']!,
                      width: 80,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 15),

                  // Property info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          house['name']!,
                          style: TextStyle(
                            color: color.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          house['address']!,
                          style: TextStyle(color: color.secondary),
                        ),

                        const SizedBox(height: 8),

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
                  ),

                  // Price
                  Text(
                    house['price']!,
                    style: TextStyle(
                      color: color.tertiary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
