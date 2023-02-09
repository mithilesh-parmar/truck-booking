import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/Extensions/AppExtensions.dart';

import '../../models/TruckLoad.dart';

class LoadListTileFooter extends StatelessWidget {
  final TruckLoadType loadType;
  final TruckType truckType;
  final String weight;

  const LoadListTileFooter(
      {super.key,
      required this.loadType,
      required this.truckType,
      required this.weight});

  String getConfigurations() {
    return "$weight Tonnes . ${loadType.displayTitle} . ${truckType.displayTitle}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(getConfigurations()),
          const Icon(Icons.arrow_right_outlined)
        ],
      ),
    );
  }
}
