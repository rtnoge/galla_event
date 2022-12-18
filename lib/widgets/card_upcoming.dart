import 'dart:ui';

import 'package:flutter/material.dart';

import '../styles/assets.dart';
import '../styles/color.dart';
import '../styles/typography.dart';

class CardUpcoming extends StatelessWidget {
  final String image, title, month;
  final int date;
  const CardUpcoming({
    Key? key,
    required this.image,
    required this.title,
    required this.date,
    required this.month,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 18),
      padding: const EdgeInsets.only(
        left: 10,
        top: 13,
        right: 12,
        bottom: 12,
      ),
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
                width: 176,
                height: 106,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 3.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xffFCFFFF).withOpacity(0.2),
                      ),
                      child: Column(
                        children: [
                          Text(
                            date.toString(),
                            style: whiteText.copyWith(fontWeight: semibold),
                          ),
                          Text(
                            month,
                            style: whiteText.copyWith(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset(pin, width: 12, height: 24),
              const SizedBox(width: 4),
              Text(
                'Bandung, ID',
                style: greyText.copyWith(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            title,
            style: blackText.copyWith(
              fontWeight: semibold,
            ),
          ),
          const SizedBox(height: 10),
          MaterialButton(
            onPressed: () {},
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 73),
            color: primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Join',
              style: whiteText,
            ),
          ),
        ],
      ),
    );
  }
}
