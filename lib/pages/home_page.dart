import 'package:dwello/components/buy_rent_buttons.dart';
import 'package:dwello/components/dwell_overview.dart';
import 'package:dwello/components/heading.dart';
import 'package:dwello/components/house_listing.dart';
import 'package:dwello/components/nearby_houses.dart';
import 'package:dwello/components/new_section.dart';
import 'package:dwello/components/search_and_filter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dwell overview
            DwellOverview(),
            SizedBox(height: 15),

            // Main container
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading(),
                  SizedBox(height: 30),

                  SearchAndFilter(),
                  SizedBox(height: 30),

                  BuyRentButtons(),
                  SizedBox(height: 30),

                  NewSection(title: 'New Listings'),
                  SizedBox(height: 5),

                  HouseListing(),
                  SizedBox(height: 30),

                  NewSection(title: 'Nearby'),
                  SizedBox(height: 5),

                  NearbyHouses(),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
