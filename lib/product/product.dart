import 'package:flutter/material.dart';

class Product {
  late num id;
  late String title;
  late List<String> images;
  late String categorie;
  late String type;
  late String description;
  late String price;
  late String temperature;
  late num quantity;
  late List<String> emojies;
  late List<String> bases;
  late List<String> sizes;

  Product(
    this.id,
    this.title,
    this.images,
    this.categorie,
    this.type,
    this.description,
    this.price,
    this.temperature,
    this.quantity,
    this.emojies,
    this.bases,
    this.sizes,
  );

  static List<Product> products() {
    return [
      Product(
        0,
        "Iced Americano",
        [
          "assets/images/Americano-transparent.png",
          "assets/images/Americano-background.jpg"
        ],
        "Americano",
        "Coffee",
        "Iced Americano blends espresso with cold water and ice, offering a refreshing and bold coffee experience. It's a crisp, caffeinated pick-me-up perfect for warm days, customizable to suit your taste preferences.",
        "2€",
        "Cold",
        0,
        ["☕", "❄️", "💧", "", ""],
        ["Water", "", "", ""],
        ["S", "M", "L"],
      ),
      Product(
        1,
        "Cappucino",
        [
          "assets/images/Capuccino_transparent.png",
          "assets/images/Capuccino-background.jpg"
        ],
        "Cappucino",
        "Coffee",
        "Cappuccino is a harmonious blend of equal parts espresso, steamed milk, and frothed milk, resulting in a creamy and rich coffee experience. This classic beverage is loved for its balanced profile and comforting texture, making it a timeless choice for coffee enthusiasts.",
        "2€",
        "Hot",
        0,
        ["☕", "🔥", "🥛", "", ""],
        ["Milk", "Oat Milk", "Soya Milk"],
        ["S", "M", "L"],
      ),
      Product(
        2,
        "Frapaccino",
        [
          "assets/images/Frapaccino-transparent.png",
          "assets/images/Frapaccino-background.jpg"
        ],
        "Frapaccino",
        "Coffee",
        "Frappuccino is a chilled coffee delight that blends espresso or coffee with ice, milk, and a sweetener. This frosty concoction offers a refreshing and creamy texture, making it a popular choice for those craving a cool and flavorful coffee experience. Frappuccinos come in various flavors, often topped with whipped cream, making them a customizable and indulgent treat perfect for warm days or whenever a cold pick-me-up is desired.",
        "2€",
        "Cold",
        0,
        ["☕", "❄️", "🥛", "", ""],
        ["Milk", "Oat Milk", "Soya Milk"],
        ["S", "M", "L"],
      ),
      Product(
        3,
        "Chococolate Frappe",
        [
          "assets/images/frappe_chocolate-transparent.png",
          "assets/images/frappe_chocolate-background.jpg"
        ],
        "Frappe",
        "Chocolate",
        "Chocolate Frappe is a decadent and icy coffee treat that combines chocolate, coffee, milk, and ice, creating a delightful and refreshing beverage. This chilled concoction boasts a rich and sweet chocolate flavor, making it a satisfying choice for those with a sweet tooth. Topped with whipped cream for an extra touch of indulgence, the Chocolate Frappe is a cool and customizable option, perfect for chocolate and coffee enthusiasts seeking a cold pick-me-up.",
        "2€",
        "Cold",
        0,
        ["🍫", "❄️", "🥛", "", ""],
        ["Milk", "Oat Milk", "Soya Milk"],
        ["S", "M", "L"],
      ),
      Product(
        4,
        "Hot Chocolate",
        [
          "assets/images/hot_chocolate-transparent.png",
          "assets/images/hot_chocolate-background.jpg"
        ],
        "hot chocolate",
        "Chocolate",
        "Hot Chocolate is a comforting beverage that combines rich cocoa, milk, and sugar, delivering a warm and indulgent treat. This classic drink is beloved for its smooth and velvety texture, providing a soothing experience, especially during colder seasons. Topped with whipped cream or marshmallows for an extra touch of sweetness, hot chocolate is a timeless and customizable favorite for those seeking a cozy and satisfying drink.",
        "2€",
        "Hot",
        0,
        ["🍫", "🔥", "🥛", "", ""],
        ["Milk", "Oat Milk", "Soya Milk"],
        ["S", "M", "L"],
      ),
      Product(
        5,
        "Latte",
        [
          "assets/images/Latte-transparent.png",
          "assets/images/Latte-background.jpg"
        ],
        "Latte",
        "Coffee",
        "Latte is a creamy and smooth coffee drink made with espresso and steamed milk. Known for its velvety texture, a latte offers a perfect balance between the boldness of espresso and the richness of frothy milk. Often customizable with various flavors like vanilla or caramel, a latte provides a comforting and versatile coffee experience. Topped with a thin layer of foam, it's a popular choice for those who enjoy a milder and more indulgent coffee option.",
        "2€",
        "Hot",
        0,
        ["☕", "🔥", "🥛", "", ""],
        ["Milk", "Oat Milk", "Soya Milk"],
        ["S", "M", "L"],
      ),
      Product(
        6,
        "Macchiato",
        [
          "assets/images/Macchiato-transparent.png",
          "assets/images/Macchiato-background.jpg"
        ],
        "Macchiato",
        "Coffee",
        "Macchiato, meaning 'stained' or 'spotted' in Italian, is a simple yet bold coffee beverage featuring a shot of espresso 'stained' with a small amount of frothy milk. This minimalist concoction highlights the intensity of the espresso while providing a subtle creaminess. The contrast between the strong coffee flavor and the velvety milk layer creates a distinctive and satisfying drink. Whether enjoyed in its traditional form or with flavor variations, a macchiato is a concise and flavorful choice for those who appreciate the essence of espresso.",
        "2€",
        "Hot",
        0,
        ["☕", "🔥", "🥛", "", ""],
        ["Milk", "Oat Milk", "Soya Milk"],
        ["S", "M", "L"],
      ),
      Product(
        7,
        "Mocha",
        [
          "assets/images/Mocha-transparent.png",
          "assets/images/Mocha-background.jpg"
        ],
        "Mocha",
        "Coffee",
        "Mocha is a delightful fusion of espresso, steamed milk, and rich chocolate, creating a luscious and indulgent coffee experience. This decadent beverage combines the robustness of coffee with the sweetness of chocolate, resulting in a harmonious blend of flavors. Topped with whipped cream for an extra touch of luxury, a mocha caters to those with a sweet tooth, offering a comforting and flavorful alternative to traditional coffee. Whether enjoyed as is or personalized with additional toppings, a mocha is a delicious treat for chocolate and coffee enthusiasts alike.",
        "2€",
        "Hot",
        0,
        ["☕", "🔥", "🥛", "", ""],
        ["Milk", "Oat Milk", "Soya Milk"],
        ["S", "M", "L"],
      ),
      Product(
        8,
        "Swiss Hot Chocolate",
        [
          "assets/images/swiss_chocolate-transparent.png",
          "assets/images/swiss_chocolate_background.jpg"
        ],
        "hot chocolate",
        "Chocolate",
        "Swiss Hot Chocolate is a velvety blend of premium cocoa, milk, and sometimes cream, delivering a luxurious and indulgent hot chocolate experience. Topped with whipped cream or chocolate shavings, it embodies the richness and sophistication of Swiss chocolate craftsmanship.",
        "2€",
        "Hot",
        0,
        ["🍫", "🔥", "🥛", "", ""],
        ["Milk", "Oat Milk", "Soya Milk"],
        ["S", "M", "L"],
      ),
      Product(
        9,
        "Tea",
        [
          "assets/images/tea_transparent.png",
          "assets/images/tea_background.jpg"
        ],
        "hot tea",
        "Tea",
        "Chai Tea is a spiced and aromatic beverage that blends black tea with a harmonious mix of spices like cinnamon, cardamom, and cloves. This flavorful and warming concoction, often infused with milk and sweetened to taste, provides a comforting and fragrant tea experience. Whether enjoyed in its traditional form or with variations like masala chai, it caters to those seeking a soothing and flavorful alternative to plain black tea. Chai Tea is a cultural delight that has gained global popularity for its unique combination of bold tea flavor and aromatic spices.",
        "2€",
        "Hot",
        0,
        ["🍵", "🔥", "💧", "", ""],
        ["Water", "", "", ""],
        ["S", "M", "L"],
      ),
      Product(
        10,
        "Salmon Bagel",
        [
          "assets/images/bagel-transparent.png",
          "assets/images/bagel-background.jpg"
        ],
        "Sandwich",
        "Meal",
        "Salmon Bagel is a delectable sandwich featuring smoked or cured salmon atop a fresh bagel, usually accompanied by cream cheese, capers, and red onions. This savory combination offers a symphony of flavors and textures, with the richness of the salmon complemented by the creaminess of the cheese and the crunchiness of the bagel. Often garnished with fresh dill or lemon for a burst of freshness, the Salmon Bagel is a popular choice for those seeking a satisfying and sophisticated breakfast or brunch option.",
        "2€",
        "Cold",
        0,
        ["🥯", "❄️", "", "🧆", ""],
        ["", "", "", ""],
        ["S", "M", "L"],
      ),
      Product(
        11,
        "Cookie",
        [
          "assets/images/cookie-transparent.png",
          "assets/images/cookie-background.jpg"
        ],
        "Dessert",
        "Meal",
        "A Cookie is a sweet baked treat made from a dough of flour, sugar, butter, and eggs, often including chocolate chips or nuts. Cookies are beloved for their variety of shapes and flavors, offering a timeless and comforting indulgence suitable for all ages.",
        "2€",
        "Cold",
        0,
        ["🍪", "❄️", "", "", ""],
        ["", "", "", ""],
        ["S", "", ""],
      ),
      Product(
        12,
        "Chocolate Cookie",
        [
          "assets/images/cookies_chocolate-transparent.png",
          "assets/images/cookies_chocolate-background.jpg"
        ],
        "Dessert",
        "Meal",
        "Chocolate Cookie is a delightful baked treat infused with rich cocoa, combining the classic elements of flour, sugar, butter, and eggs with the indulgence of chocolate. These cookies are often studded with chocolate chips or chunks, creating a harmonious blend of sweet and decadent flavors. With a satisfying chewiness or crispiness, chocolate cookies are a beloved dessert, perfect for satisfying sweet cravings. Whether enjoyed fresh from the oven or savored as a snack, these treats are a timeless and irresistible indulgence for chocolate lovers.",
        "2€",
        "Cold",
        0,
        ["🍪", "❄️", "", "", "🍫"],
        ["", "", "", ""],
        ["S", "", ""],
      ),
      Product(
        13,
        "Raspberry Croissant",
        [
          "assets/images/croissant_raspberry-transparent.png",
          "assets/images/croissant_raspberry-background.jpg"
        ],
        "Croissant",
        "Meal",
        "description",
        "2€",
        "Cold",
        0,
        ["🥐", "❄️", "", "", ""],
        ["", "", "", ""],
        ["S", "", ""],
      ),
      Product(
        14,
        "Chocolate Croissant",
        [
          "assets/images/croissant_chocolate-transparent.png",
          "assets/images/chocolate_croissant-background.jpg"
        ],
        "Croissant",
        "Meal",
        "A Chocolate Croissant is a delectable pastry featuring a buttery croissant filled with rich melted chocolate. This indulgent treat offers a perfect blend of flaky layers and sweet, gooey chocolate, making it a delightful choice for breakfast or a satisfying dessert.",
        "2€",
        "Cold",
        0,
        ["🥐", "❄️", "", "", "🍫"],
        ["", "", "", ""],
        ["S", "", ""],
      ),
    ];
  }
}

class Shop extends ChangeNotifier {
  final List<Product> _cart = [];
  List<Product> get products => _cart;
  List<Product> get cart => _cart;

  //add to cart

  void addToCart(Product productItem) {
    for (int i = 0; i < 1; i++) {
      _cart.add(productItem);
    }
    notifyListeners();
  }

  /*void removeFromCart(Product product) {
    _cart.remove(Product);
  } */

  @override
  notifyListeners();
}
