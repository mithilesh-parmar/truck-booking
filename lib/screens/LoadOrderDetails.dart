import 'package:flutter/material.dart';
import 'package:truck_booking/models/LoadOrder.dart';
import 'package:truck_booking/models/TruckLoad.dart';
import 'package:truck_booking/screens/TruckDetailsPage.dart';

import '../widgets/FleetOperatorCard.dart';
import '../widgets/HorizontalStepper/LoadStatusCard.dart';
import '../widgets/LoadOrderSummary.dart';
import '../widgets/TruckAndDriverCard.dart';

class LoadOrderDetails extends StatelessWidget {
  final LoadOrder loadOrder;
  const LoadOrderDetails({super.key, required this.loadOrder});

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
        title: Text(
          "Order: #${loadOrder.id} ",
          style: const TextStyle(color: Colors.black),
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
            LoadOrderSummary(
              loadOrder: loadOrder,
            ),
            LoadStatusCard(
              status: loadOrder.truckLoad.status,
            ),
            FleetOperatorCard(fleetOperator: loadOrder.fleetOperator),
            TruckAndDriverCard(
              details: loadOrder.truckDetails,
              onClick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TruckDetailsPage(loadOrder: loadOrder),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
