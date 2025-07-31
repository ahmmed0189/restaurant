import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/components/button.dart';
import 'package:restaurant/models/food.dart';
import 'package:restaurant/models/shop.dart';
import 'package:restaurant/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove from Cart
  void removeFromCart(Food food, BuildContext context) {
    //get access to shop
    final shop = context.read<Shop>();
    // renove from Cart
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, index) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text("Hy Cart", style: TextStyle(color: Colors.white)),
          elevation: 0,
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  // get food from cart
                  final Food food = value.cart[index];

                  // get food name
                  final String foodName = food.name;

                  //get food price
                  final String foodPrice = food.price;

                  // return list tile
                  return Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20,
                    ),

                    child: ListTile(
                      title: Text(
                        food.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        food.price,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () => removeFromCart(food, context),
                        icon: Icon(Icons.delete, color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
            // pay botton
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyButton(text: "Pay Now", onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
