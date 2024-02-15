import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  void uptadeList(String value) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            style: const TextStyle(color: Color(0xff4F2D1F)),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9.0),
                  borderSide: BorderSide.none),
              hintText: "Beverages, coffee, tea",
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: const Color(0xff4F2D1F),
            ),
          ),
        ],
      ),
    );
  }
}
