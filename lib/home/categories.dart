import 'package:flutter/material.dart';
import 'package:projet_coffee_shop/product/product.dart';
import 'package:projet_coffee_shop/product/detail/product_detail.dart';
import 'package:provider/provider.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "Coffee", "Tea", "Meal", "Chocolate"];
  int selectedIndex = 0;

  List<Product> getFilteredProducts() {
    if (selectedIndex == 0) {
      return Product.products();
    } else {
      String selectedCategory = categories[selectedIndex];
      return Product.products()
          .where((product) => product.type == selectedCategory)
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts = getFilteredProducts();

    void addToCart(int index) {
      final shop = context.read<Shop>();
      bool isInCart = shop.cart.any((item) => item.id == index);

      if (!isInCart) {
        shop.addToCart(filteredProducts[index]);
        filteredProducts[index].quantity++;
      } else {
        filteredProducts[index].quantity++;
      }

      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          content: Text("Vous avez ajouté un élément au panier !"),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          margin: const EdgeInsets.only(left: 10, right: 5),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 5),
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategorie(index),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Text(
            "Popular 🔥",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xffF5F5F5),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  mainAxisExtent: 250,
                ),
                itemCount: filteredProducts.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffD2B48C),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          filteredProducts[index].temperature,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          filteredProducts[index].images[0],
                          width: 100,
                        ),
                        Text(
                          filteredProducts[index].title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(filteredProducts[index].price),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffF5F5F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            addToCart(index);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProductDetail(
                                    products: filteredProducts[index]),
                              ),
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add",
                                style: TextStyle(
                                  color: Color(0xff4F2D1F),
                                ),
                              ),
                              Icon(
                                Icons.add_circle_outlined,
                                color: Color(0xff4F2D1F),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCategorie(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                color: selectedIndex == index
                    ? Colors.transparent
                    : Colors.transparent,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decorationThickness: 3,
                shadows: [
                  Shadow(
                    color: selectedIndex == index
                        ? const Color(0xffD2B48C)
                        : const Color(0xffF5F5F5),
                    offset: const Offset(0, -10),
                  ),
                ],
                decorationColor: selectedIndex == index
                    ? const Color(0xffD2B48C)
                    : const Color(0xffF5F5F5),
                decoration: selectedIndex == index
                    ? TextDecoration.underline
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
