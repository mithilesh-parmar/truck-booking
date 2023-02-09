import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/LoadOrder.dart';
import 'HorizontalTile.dart';

class DriverDetailsCard extends StatelessWidget {
  final TruckDetails details;

  const DriverDetailsCard({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Truck and Driver",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.merge(const TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            const HorizontalTile(
              title: "Truck ID",
              subtitle: "35",
              padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            ),
            HorizontalTile(
              title: "Truck Registeration Number",
              subtitle: details.truckNumber,
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            ),
            HorizontalTile(
              title: "Driver Name",
              subtitle: details.driverName,
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            ),
            HorizontalTile(
              title: "Driver Phone Number",
              subtitle: details.driverPhoneNumber,
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            )
          ],
        ),
      ),
    );
  }
}
