import 'package:flutter/material.dart';
import 'package:meriapp/constants/constants.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: ListView.builder(
          itemCount: Constants.cartList.length,
          itemBuilder: (context, index) {
            return myCartItem(index);
          }),
    );
  }
}

myCartItem(index) {
  return ListTile(
    leading: CircleAvatar(
      child: Image.network(Constants.cartList[index].image),
    ),
    title: Text(Constants.cartList[index].name),
    subtitle: Text(Constants.cartList[index].brand),
    trailing: Text(Constants.cartList[index].price),
  );
}

  // return ListTile(
  //             leading: CircleAvatar(
  //               child: Image.network(Constants.cartList[index].image),
  //             ),
  //             title: Text(Constants.cartList[index].name),
  //             subtitle: Text(Constants.cartList[index].brand),
  //             trailing: Text(Constants.cartList[index].price),
  //           );
