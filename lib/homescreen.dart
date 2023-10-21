import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Fruits",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                getProductCard(),
                getProductCard(),
                getProductCard(),
                getProductCard(),
                getProductCard(),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Vegetables",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                getProductCard(),
                getProductCard(),
                getProductCard(),
                getProductCard(),
                getProductCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

getProductCard() {
  return Card(
    color: Colors.white,
    shadowColor: Colors.grey.shade200,
    elevation: 5.0,
    child: Container(
      height: 250,
      width: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bunch-of-bananas-67e91d5.jpg",
            width: double.infinity,
            height: 200,
          ),
          Text(
            "Banana",
            style: TextStyle(fontSize: 14),
          ),
          Text(
            "Pkr: 220",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}
