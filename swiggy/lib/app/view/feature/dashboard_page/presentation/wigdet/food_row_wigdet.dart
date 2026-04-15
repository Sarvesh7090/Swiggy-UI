
import 'package:flutter/material.dart';

Widget foodItem(int index) {
  return Padding(
    padding: const EdgeInsets.all(0),
    child: Row(
      children: [

        /// IMAGE
        ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: Image.network(
            "https://media.istockphoto.com/id/1433432507/photo/healthy-eating-plate-with-vegan-or-vegetarian-food-in-woman-hands-healthy-plant-based-diet.jpg?s=2048x2048&w=is&k=20&c=m83OygDv_Fm9gjQvxsnEaPRd4_WC3q6vcpMBtSkauXM=",
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(width: 12),


        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pizza Item $index",
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 5),
              Text("₹199"),
            ],
          ),
        ),

        /// BUTTON
        SizedBox(
          width: 70,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("ADD"),
          ),
        ),
      ],
    ),
  );
}