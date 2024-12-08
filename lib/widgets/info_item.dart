import 'package:flutter/material.dart';


class InfoItem extends StatelessWidget {
  const InfoItem(
    this.title,
    this.value,
  );

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(title)
      ],
    );
  }
}
