import 'package:flutter/material.dart';
import 'package:flutter_e_shop/const/AppColors.dart';
import 'package:flutter_e_shop/ui/bottom_nav_pages/cart.dart';
import 'package:flutter_e_shop/ui/bottom_nav_pages/favorite.dart';
import 'package:flutter_e_shop/ui/bottom_nav_pages/home.dart';
import 'package:flutter_e_shop/ui/bottom_nav_pages/profile.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    Home(),
    Favorite(),
    Cart(),
    Profile(),
  ];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Flutter E-shop",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          selectedItemColor: AppColors.deep_orange,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          selectedLabelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              title: Text("Favourite"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Cart"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Person"),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              print(_currentIndex);
            });
          },
        ),
        body: _pages[_currentIndex],
      ),
    );
  }
}
