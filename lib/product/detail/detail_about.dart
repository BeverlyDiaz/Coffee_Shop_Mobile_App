import 'package:flutter/material.dart';
import 'package:projet_coffee_shop/product/product.dart';
import 'package:readmore/readmore.dart';

class DetailAbout extends StatelessWidget {
  const DetailAbout({super.key, required this.products});
  final Product products;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            products.title,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xffF5F5F5),
            ),
          ),
          ReadMoreText(
            products.description,
            style: const TextStyle(fontSize: 15, color: Color(0xffD2B48C)),
            trimLines: 2,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
            trimExpandedText: 'Read less',
            moreStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xffF5F5F5)),
            lessStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xffF5F5F5)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        color: const Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          products.emojies[0],
                        ),
                        Text(
                          products.type,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4F2D1F)),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text(
                              products.emojies[1],
                            ),
                            Text(
                              products.temperature,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4F2D1F),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin:
                        const EdgeInsets.only(top: 20, bottom: 20, left: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Text(
                          products.emojies[2],
                        ),
                        Text(
                          products.bases[0],
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4F2D1F)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF5F5F5),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(top: 10, bottom: 5),
                        decoration: BoxDecoration(
                            color: const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "assets/images/Size_chocolate.png",
                          width: 40,
                        ),
                      ),
                      Text(
                        products.sizes[0],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF5F5F5)),
                      ),
                    ],
                  ),
                  Column(children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ]),
                  Text(
                    products.sizes[1],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xffF5F5F5)),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 10, bottom: 5),
                    height: 90,
                    decoration: BoxDecoration(
                        color: const Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/images/Size_chocolate.png",
                      width: 80,
                    ),
                  ),
                  Text(
                    products.sizes[1],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xffF5F5F5)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
