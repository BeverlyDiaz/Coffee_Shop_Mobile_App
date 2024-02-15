import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:projet_coffee_shop/product/product.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final shop = context.watch<Shop>();

    return Container(
      color: const Color(0xff4F2D1F),
      child: Column(
        children: [
          Container(
            height: 100,
            color: const Color(0xffF5F5F5),
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top, left: 10),
            child: const Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 40,
                  color: Color(0xff4F2D1F),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Cart ☕",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff4F2D1F),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 550,
            width: 300,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: shop.cart.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final productItem = shop.cart[index];
                num quantity = productItem.quantity;

                return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xffD2B48C),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              productItem.temperature,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                          Image.asset(
                            productItem.images[0],
                            width: 90,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productItem.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(productItem.type),
                          Text(productItem.price),
                          Row(
                            children: [
                              GestureDetector(
                                child: const Icon(
                                  Icons.remove_circle_outlined,
                                  color: Color(0xff4F2D1F),
                                  size: 30,
                                ),
                                onTap: () {
                                  removeFromCart(index);
                                },
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  "$quantity",
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                              GestureDetector(
                                child: const Icon(
                                  Icons.add_circle_outlined,
                                  color: Color(0xff4F2D1F),
                                  size: 30,
                                ),
                                onTap: () {
                                  addQuantity(index);
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void removeFromCart(int index) {
    final shop = context.read<Shop>();
    setState(() {
      shop.cart[index].quantity--;
      if (shop.cart[index].quantity <= 0) {}
    });
  }

  void addQuantity(int index) {
    final shop = context.read<Shop>();
    setState(() {
      if (shop.cart[index].quantity > 0) {
        shop.cart[index].quantity++;
      }
    });
  }
}
