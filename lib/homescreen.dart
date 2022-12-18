import 'package:flutter/material.dart';

import 'styles/assets.dart';
import 'styles/color.dart';
import 'styles/typography.dart';

import 'widgets/card_popular.dart';
import 'widgets/card_upcoming.dart';
import 'widgets/icon_bottom_navbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      bottomNavigationBar: _bottomNavbar(),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: ListView(
          children: [
            _header(),
            _searchbar(),
            _upcomingEvents(),
            _popularEvents(),
          ],
        ),
      ),
    );
  }

  Container _popularEvents() => Container(
        margin: const EdgeInsets.only(top: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
              child: Row(
                children: [
                  Text(
                    'Popular Now',
                    style: blackText.copyWith(
                      fontSize: 18,
                      fontWeight: semibold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'See All',
                    style: greyText.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 24),
                  CardPopular(
                    image: event3,
                    title: 'Dancing in The Moon',
                    date: '9 August 2022',
                    time: '17:00 PM',
                  ),
                  CardPopular(
                    image: event4,
                    title: 'Young Music Festival',
                    date: '11 October 2022',
                    time: '19:00 PM',
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Container _upcomingEvents() => Container(
        margin: const EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Upcoming Events',
                style: blackText.copyWith(fontSize: 18, fontWeight: semibold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 24),
                  CardUpcoming(
                    image: event1,
                    title: 'Lampion: From Earth to\nMoon 2022',
                    date: 9,
                    month: 'Sept',
                  ),
                  CardUpcoming(
                    image: event2,
                    title: 'Car Free Day in Bandung\n06:00 PM - 10:00 PM',
                    date: 12,
                    month: 'Sept',
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Container _searchbar() => Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: white,
        ),
        child: Center(
          child: Row(
            children: [
              Image.asset(explore, width: 24),
              const SizedBox(width: 12),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Search all events...',
                    hintStyle: greyText,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Container _header() => Container(
        margin: const EdgeInsets.only(
          left: 24,
          top: 20,
          right: 24,
          bottom: 24,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find events near',
                  style: greyText,
                ),
                Text(
                  'Bandung, ID',
                  style: blackText.copyWith(
                    fontSize: 20,
                    fontWeight: semibold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(avatar, width: 48),
            )
          ],
        ),
      );

  BottomAppBar _bottomNavbar() => BottomAppBar(
        child: BottomNavigationBar(
          backgroundColor: white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: IconBottomNavbar(
                  icon: home,
                  text: 'Home',
                  isActive: true,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: IconBottomNavbar(
                  icon: explore,
                  text: 'Explore',
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: IconBottomNavbar(
                  icon: favorite,
                  text: 'Favorite',
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: IconBottomNavbar(
                  icon: ticket,
                  text: 'Ticket',
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: IconBottomNavbar(
                  icon: profile,
                  text: 'Profile',
                ),
                label: ''),
          ],
        ),
      );
}
