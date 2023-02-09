import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/LoadOrder.dart';
import 'HorizontalTile.dart';

class FleetOperatorCard extends StatelessWidget {
  final FleetOperator fleetOperator;

  const FleetOperatorCard({super.key, required this.fleetOperator});

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
                "Fleet Operator",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.merge(const TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            HorizontalTile(
              title: "Company Name",
              subtitle: fleetOperator.companyName,
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            ),
            HorizontalTile(
              title: "Operator Name",
              subtitle: fleetOperator.operatorName,
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            ),
            HorizontalTile(
              title: "Phone Number",
              subtitle: fleetOperator.phoneNumber,
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            )
          ],
        ),
      ),
    );
  }
}
