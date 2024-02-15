import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff4F2D1F),
      height: 100,
      child: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 15, right: 15),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coffee Shop",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/avatar.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
