import 'package:flutter/material.dart';
import 'package:meriapp/constants/constants.dart';
import 'package:meriapp/model/product.dart';

class ProductDetailsView extends StatelessWidget {
  Product product;
  ProductDetailsView(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(product.image))),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${product.name}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    Text(
                      "Rating: ${product.rating}",
                      style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 255, 219, 59)),
                    ),
                  ],
                ),
                Text(
                  "${product.desc}",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.grey),
                ),
                Text(
                  "${product.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Constants.cartList.add(product);
                        },
                        child: Text("Add to Cart")))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
