import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:truck_booking/Extensions/AppExtensions.dart';

import '../../models/TruckLoad.dart';

class LoadListTileBody extends StatelessWidget {
  final TruckLoad truckLoad;
  const LoadListTileBody({super.key, required this.truckLoad});

  String getPickupDate() {
    if (truckLoad.destinationDate == null) {
      return "To be determined";
    }

    return truckLoad.destinationDate!.formattedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.location_on),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    truckLoad.pickupAddress,
                    style: Theme.of(context).textTheme.titleMedium?.merge(
                        const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    truckLoad.pickupDate.formattedDate,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.merge(TextStyle(color: Colors.grey[500])),
                  )
                ],
              )
            ],
          ),
          const Icon(Icons.arrow_downward_sharp),
          Row(
            children: [
              const Icon(Icons.location_on),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    truckLoad.destinationAddress,
                    style: Theme.of(context).textTheme.titleMedium?.merge(
                        const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    getPickupDate(),
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.merge(TextStyle(color: Colors.grey[500])),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
