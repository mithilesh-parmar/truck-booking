import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HorizontalTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final EdgeInsets padding;
  const HorizontalTile(
      {super.key,
      required this.title,
      required this.subtitle,
      this.padding = const EdgeInsets.all(8)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(subtitle)],
      ),
    );
  }
}
