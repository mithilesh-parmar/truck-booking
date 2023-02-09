import 'package:flutter/material.dart';
import 'package:truck_booking/widgets/FleetOperatorCard.dart';
import 'package:truck_booking/widgets/HorizontalStepper/LoadStatusCard.dart';

import '../models/LoadOrder.dart';
import '../widgets/DriverDetailsCard.dart';

class TruckDetailsPage extends StatelessWidget {
  final LoadOrder loadOrder;

  const TruckDetailsPage({super.key, required this.loadOrder});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          "Truck Details",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding:
              const EdgeInsets.only(top: 20, bottom: 150, left: 8, right: 8),
          children: [
            FleetOperatorCard(fleetOperator: loadOrder.fleetOperator),
            DriverDetailsCard(details: loadOrder.truckDetails),
            LoadStatusCard(status: loadOrder.truckLoad.status)
          ],
        ),
      ),
    );
  }
}
