import 'package:flutter/material.dart';

import '../models/LoadOrder.dart';
import 'HorizontalTile.dart';

class TruckAndDriverCard extends StatelessWidget {
  final TruckDetails details;
  final VoidCallback onClick;

  const TruckAndDriverCard(
      {super.key, required this.details, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Truck And Driver",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.merge(const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 0.3),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              HorizontalTile(
                                  title: "Truck No",
                                  subtitle: details.truckNumber),
                              HorizontalTile(
                                  title: "Driver No",
                                  subtitle: details.driverPhoneNumber),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.chevron_right,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "Delivered",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ],
                              )
                            ],
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.green),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ))),
                              onPressed: () => {},
                              child: const Text("Live Status"))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
