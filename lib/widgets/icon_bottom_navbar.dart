import 'package:flutter/material.dart';

import '../styles/typography.dart';

class IconBottomNavbar extends StatelessWidget {
  final String icon, text;
  final bool isActive;
  const IconBottomNavbar({
    Key? key,
    required this.icon,
    required this.text,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, width: 24),
          const SizedBox(height: 6),
          Text(
            text,
            style: isActive
                ? orangeText.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  )
                : greyText.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
          ),
        ],
      ),
    );
  }
}
