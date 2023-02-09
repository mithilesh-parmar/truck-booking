import 'package:flutter/material.dart';
import 'package:truck_booking/Extensions/AppExtensions.dart';

import '../../models/TruckLoad.dart';

class LoadListTileHeading extends StatelessWidget {
  final TruckLoadStatus status;
  final String? price;
  const LoadListTileHeading(
      {super.key, required this.status, required this.price});

  String getPriceTitle() {
    if (price == null) {
      return "Price Pending";
    }
    switch (status) {
      case TruckLoadStatus.IN_PROGRESS:
        return price!;
      case TruckLoadStatus.PENDING:
        return "Price Pending";
      default:
        return status.displayTitle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            getPriceTitle(),
            style: Theme.of(context).textTheme.titleMedium?.merge(
                const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w700)),
          ),
          Card(
            color: Colors.lightBlue[200],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(status.displayTitle),
            ),
          )
        ],
      ),
    );
  }
}
