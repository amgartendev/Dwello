import 'package:flutter/material.dart';

class DwellOverview extends StatelessWidget {
  const DwellOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return ClipRRect(
      child: Stack(
        children: [
          // Property image
          Image.asset(
            'assets/images/properties/dwell_7.png',
            width: double.infinity,
            height: 450,
            fit: BoxFit.cover,
          ),

          // Info
          Positioned(
            bottom: 15,
            right: 15,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Badge "FEATURED DWELL"
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: color.inversePrimary.withAlpha(128),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: color.tertiary,
                          shape: BoxShape.circle,
                        ),
                      ),

                      const SizedBox(width: 8),

                      Text(
                        'FEATURED DWELL',
                        style: TextStyle(
                          color: color.inversePrimary,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 5),

                // Property name
                Text(
                  'The Glass Pavilion',
                  style: TextStyle(
                    color: color.inversePrimary,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                const SizedBox(height: 5),

                // Address and price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.pin_drop,
                            color: color.inversePrimary,
                            size: 18,
                          ),

                          const SizedBox(width: 5),

                          Flexible(
                            child: Text(
                              '8802 Modernist Way, Beverly Hills',
                              style: TextStyle(
                                color: color.inversePrimary,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Text(
                      '\$5.4M',
                      style: TextStyle(
                        color: color.tertiary,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
