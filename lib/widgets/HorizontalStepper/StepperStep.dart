import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperStep extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final String title;
  final IconData icon;
  final bool isSelected;

  const StepperStep(
      {super.key,
      required this.leading,
      required this.trailing,
      required this.title,
      required this.icon,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leading ?? const SizedBox.shrink(),
        Column(
          children: [
            Card(
              color: isSelected ? Colors.green : Colors.blueGrey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
            Text(title)
          ],
        ),
        trailing ?? const SizedBox.shrink(),
      ],
    );
  }
}
