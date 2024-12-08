import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    required this.isActive,
    required this.iconData,
    super.key,
  });

  final bool isActive;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive ? Colors.black : Colors.white,
              width: 1,
            ),
          ),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            size: 32,
          ),
        ),
      ),
    );
  }
}
