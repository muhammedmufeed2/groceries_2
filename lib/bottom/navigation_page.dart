import 'package:flutter/material.dart';
import 'package:groceries_project/page_bottom_navigation/Cart.dart';
import 'package:groceries_project/page_bottom_navigation/explore.dart';
import 'package:groceries_project/page_bottom_navigation/favourite.dart';

import '../page_bottom_navigation/account.dart';
import '../page_bottom_navigation/shop.dart';

class BottamNavigation extends StatefulWidget {
  const BottamNavigation({super.key});

  @override
  State<BottamNavigation> createState() => _BottamNavigationState();
}

int pageIndex = 0;

final pages = [
  shop(),
  Explore(),
  Cart(),
  Favorite(),
  Account(),
];

class _BottamNavigationState extends State<BottamNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(unselectedItemColor: Colors.black,

     showUnselectedLabels: true,
        backgroundColor: Colors.green,
   fixedColor: Colors.black,
        onTap: (pages) {
          setState(() {
            pageIndex = pages;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: "shop",
            icon: Icon(
              Icons.shop,
              color: pageIndex == 0 ? Colors.green : Colors.black,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: "Explore",
            icon: Icon(
              Icons.explore,
              color: pageIndex == 1 ? Colors.green : Colors.black,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: "cart",
            icon: Icon(
              Icons.shopping_cart_sharp,
              color: pageIndex == 2 ? Colors.green : Colors.black,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: "favourite",
            icon: Icon(
              Icons.favorite,
              color: pageIndex == 3 ? Colors.green : Colors.black,
              size: 35,
            ),
          ),
          BottomNavigationBarItem(
            label: "account",
            icon: Icon(
              Icons.person,
              color: pageIndex == 4 ? Colors.green : Colors.black,
              size: 35,
            ),
          ),
        ],
      ),
      body: pages[pageIndex],
    );
  }
}
