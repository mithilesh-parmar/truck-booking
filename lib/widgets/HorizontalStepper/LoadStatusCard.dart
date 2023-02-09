import 'package:flutter/material.dart';
import 'package:truck_booking/models/TruckLoad.dart';

import 'StepperStep.dart';

class LoadStatusCard extends StatelessWidget {
  final TruckLoadStatus status;

  const LoadStatusCard({super.key, required this.status});

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
                "Load Status",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.merge(const TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StepperStep(
                  icon: Icons.check,
                  title: "Pending",
                  leading: null,
                  trailing: const Icon(Icons.arrow_right_alt),
                  isSelected: status == TruckLoadStatus.PENDING,
                ),
                StepperStep(
                  icon: Icons.check,
                  title: "Quoted",
                  leading: null,
                  trailing: const Icon(Icons.arrow_right_alt),
                  isSelected: status == TruckLoadStatus.QUOTED,
                ),
                StepperStep(
                  icon: Icons.check,
                  title: "Scheduled",
                  leading: null,
                  trailing: const Icon(Icons.arrow_right_alt),
                  isSelected: status == TruckLoadStatus.SCHEDULED,
                ),
                StepperStep(
                  icon: Icons.check,
                  title: "In Progress",
                  leading: null,
                  trailing: null,
                  isSelected: status == TruckLoadStatus.IN_PROGRESS,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
