import 'package:flutter/material.dart';
import 'package:projet_coffee_shop/home/categories.dart';
import 'package:projet_coffee_shop/home/header.dart';
import 'package:projet_coffee_shop/home/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff4F2D1F),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                HeaderHome(),
                SizedBox(
                  height: 20,
                ),
                Search(),
                SizedBox(
                  height: 20,
                ),
                Categories(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
