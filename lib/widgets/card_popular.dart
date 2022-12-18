import 'package:flutter/material.dart';

import '../styles/color.dart';
import '../styles/typography.dart';

class CardPopular extends StatelessWidget {
  final String image, title, date, time;
  const CardPopular({
    Key? key,
    required this.image,
    required this.title,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 18),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 266,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 194, top: 107),
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: lightOrange,
                ),
                child: Text(
                  'Free',
                  style: orangeText.copyWith(fontWeight: medium),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: blackText.copyWith(fontWeight: semibold),
          ),
          const SizedBox(height: 2),
          Text(
            '$date • $time',
            style: greyText.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
