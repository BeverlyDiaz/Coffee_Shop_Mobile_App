import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:projet_coffee_shop/cart/cart.dart';
import 'package:projet_coffee_shop/favorite/favorite.dart';
import 'package:projet_coffee_shop/home/home.dart';
import 'package:projet_coffee_shop/notification/notification.dart';
import 'package:projet_coffee_shop/product/product.dart';
import 'package:projet_coffee_shop/profile/profile.dart';
import 'package:projet_coffee_shop/splash/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Coffee Shop App",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final GlobalKey<CurvedNavigationBarState> _curvednavigationkey = GlobalKey();
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const FavoriteProduct(),
    const Cart(),
    const NotificationProduct(),
    const ProfileUser(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _curvednavigationkey,
        index: _currentIndex,
        height: 65.0,
        items: [
          Icon(
            Icons.home_outlined,
            size: 30,
            color: _currentIndex == 0
                ? const Color(0xffF5F5F5)
                : const Color(0xff4F2D1F),
          ),
          Icon(
            Icons.favorite_outline_outlined,
            size: 30,
            color: _currentIndex == 1
                ? const Color(0xffF5F5F5)
                : const Color(0xff4F2D1F),
          ),
          Consumer<Shop>(
            builder: (context, shop, child) {
              final cartLength = shop.cart.length;

              return badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: _currentIndex == 2
                      ? const Color(0xffF5F5F5)
                      : const Color(0xff4F2D1F),
                ),
                showBadge: cartLength > 0,
                badgeContent: Text(
                  '$cartLength',
                  style: TextStyle(
                    color: _currentIndex == 2
                        ? const Color(0xff4F2D1F)
                        : const Color(0xffF5F5F5),
                  ),
                ),
                badgeAnimation: const badges.BadgeAnimation.scale(
                    // ... (rest of the animation properties)
                    ),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: _currentIndex == 2
                      ? const Color(0xffF5F5F5)
                      : const Color(0xff4F2D1F),
                ),
              );
            },
          ),
          Icon(
            Icons.notifications_outlined,
            size: 30,
            color: _currentIndex == 3
                ? const Color(0xffF5F5F5)
                : const Color(0xff4F2D1F),
          ),
          Icon(
            Icons.person_2_outlined,
            size: 30,
            color: _currentIndex == 4
                ? const Color(0xffF5F5F5)
                : const Color(0xff4F2D1F),
          ),
        ],
        color: const Color(0xffD2B48C),
        backgroundColor: const Color(0xff4F2D1F),
        buttonBackgroundColor: const Color(0xff4F2D1F),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
