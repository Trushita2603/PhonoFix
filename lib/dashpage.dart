import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phonofix_app/bookmark/bookmark.dart';
import 'package:phonofix_app/counsuling/counsuling.dart';
import 'package:phonofix_app/leaderboard/leaderboard.dart';
import 'package:phonofix_app/notifications/notify.dart';
import 'package:phonofix_app/utils/colors.dart';

import 'home/home.dart';

class DashPage extends StatefulWidget {
  const DashPage({super.key});

  @override
  State<DashPage> createState() => _DashPage();
}

class _DashPage extends State<DashPage> {
  List pages = [
    const HomePage(),
    const BookMark(),
    const Counsuling(),
    const Notify(),
    const LeaderBoard(),
  ];

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Center(
          child: pages[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: ColorsValue().secondary,
        iconSize: 28,
        selectedItemColor: ColorsValue().primary,
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Boxicons.bxs_home,
                color: ColorsValue().primary,
              ),
              icon: Icon(
                Boxicons.bx_home,
                color: ColorsValue().primary,
              ),
              label: "Home",
              backgroundColor: ColorsValue().secondary),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Boxicons.bxs_bookmark,
                color: ColorsValue().primary,
              ),
              icon: Icon(
                Boxicons.bx_bookmark,
                color: ColorsValue().primary,
              ),
              label: "BookMark",
              backgroundColor: ColorsValue().secondary),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Boxicons.bxs_group,
                color: ColorsValue().primary,
              ),
              icon: Icon(
                Boxicons.bx_group,
                color: ColorsValue().primary,
              ),
              label: "Counsuling",
              backgroundColor: ColorsValue().secondary),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Boxicons.bxs_notification,
                color: ColorsValue().primary,
              ),
              icon: Icon(
                Boxicons.bx_notification,
                color: ColorsValue().primary,
              ),
              label: "Notifications",
              backgroundColor: ColorsValue().secondary),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Boxicons.bxs_shield,
                color: ColorsValue().primary,
              ),
              icon: Icon(
                Boxicons.bx_shield,
                color: ColorsValue().primary,
              ),
              label: "LeaderBoard",
              backgroundColor: ColorsValue().secondary),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
