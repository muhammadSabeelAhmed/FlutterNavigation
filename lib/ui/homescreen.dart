import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meriapp/cartscrees.dart';
import 'package:meriapp/constants/constants.dart';
import 'package:meriapp/model/product.dart';
import 'package:meriapp/ui/productdetailsscreen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    var productList = constants.list;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => CartView()));
        },
        child: Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text("Welcome! ${Constants.name}"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Featured Footwear",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.5,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return getFeaturedProductCard(context, productList[index]);
                }),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "New Arrivals",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return getProductCard(context, productList[index]);
                }),
          ),
        ],
      ),
    );
  }
}

getProductCard(BuildContext context, product) {
  return InkWell(
    onTap: () {
      print(product.name);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => ProductDetailsView(product)));
    },
    child: Card(
      color: Colors.white,
      shadowColor: Colors.grey.shade200,
      elevation: 5.0,
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              "${product.image}",
              width: double.infinity,
              height: 200,
            ),
            Text(
              "${product.name}",
              style: TextStyle(fontSize: 14),
            ),
            Text(
              "${product.price}",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    ),
  );
}

getFeaturedProductCard(BuildContext context, product) {
  return InkWell(
    onTap: () {
      print(product.name);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => ProductDetailsView(product)));
    },
    child: Card(
      color: Colors.white,
      shadowColor: Colors.grey.shade200,
      elevation: 5.0,
      child: Container(
        height: MediaQuery.of(context).size.width * 0.5,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(product.image), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "${product.name}",
              style: TextStyle(fontSize: 14),
            ),
            Text(
              "${product.price}",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    ),
  );
}
