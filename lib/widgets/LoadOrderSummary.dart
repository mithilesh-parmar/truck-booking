import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/Extensions/AppExtensions.dart';

import '../models/LoadOrder.dart';
import 'HorizontalTile.dart';

class LoadOrderSummary extends StatelessWidget {
  final LoadOrder loadOrder;

  const LoadOrderSummary({super.key, required this.loadOrder});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pick up Address",
                          style: Theme.of(context).textTheme.bodySmall?.merge(
                              const TextStyle(fontWeight: FontWeight.w400)),
                        ),
                        Text(
                          loadOrder.truckLoad.pickupAddress,
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    Container(
                      height: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Drop Location",
                          style: Theme.of(context).textTheme.bodySmall?.merge(
                              const TextStyle(fontWeight: FontWeight.w400)),
                        ),
                        Text(
                          loadOrder.truckLoad.destinationAddress,
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Icon(
                  Icons.fire_truck_rounded,
                  size: 180,
                ),
              )
            ],
          ),
          HorizontalTile(title: "Order ID", subtitle: loadOrder.id.toString()),
          HorizontalTile(
              title: "Pickup Date",
              subtitle: loadOrder.truckLoad.pickupDate.formattedDate),
          HorizontalTile(
              title: "Preferred Vehicle",
              subtitle: loadOrder.truckLoad.truckType.displayTitle),
          HorizontalTile(
              title: "Quantity Of Load", subtitle: loadOrder.truckLoad.weight),
          HorizontalTile(
              title: "Material Type",
              subtitle: loadOrder.truckLoad.loadType.displayTitle)
        ]),
      ),
    );
  }
}
