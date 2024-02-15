import 'package:flutter/material.dart';
import 'package:projet_coffee_shop/main.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/Coffee-Frappe.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(30),
            height:
                screenHeight / 2, // Occupera la moitié inférieure de l'écran
            decoration: const BoxDecoration(
              color: Color(0xffD2B48C), // Couleur du Container
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Welcome Back !",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                const Text(
                  "Immerse yourself in the cozy ambiance of our coffee haven, where each sip is a journey into rich flavors and delightful moments.",
                  style: TextStyle(fontSize: 18, color: Color(0xff4F2D1F)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4F2D1F),
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      'Get Started !',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Menu(),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
