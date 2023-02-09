import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:truck_booking/models/TruckLoad.dart';

import 'LoadListTileBody.dart';
import 'LoadListTileFooter.dart';
import 'LoadListTileHeading.dart';

class LoadListTile extends StatelessWidget {
  final TruckLoad truckLoad;

  const LoadListTile({super.key, required this.truckLoad});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          LoadListTileHeading(
            status: truckLoad.status,
            price: truckLoad.pricePerTonne,
          ),
          LoadListTileBody(
            truckLoad: truckLoad,
          ),
          LoadListTileFooter(
              loadType: truckLoad.loadType,
              truckType: truckLoad.truckType,
              weight: truckLoad.weight)
        ],
      ),
    );
  }
}
