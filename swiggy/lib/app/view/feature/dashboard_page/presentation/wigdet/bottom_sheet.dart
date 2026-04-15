import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'food_row_wigdet.dart';

Widget buildBottomSheet() {
  return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.4,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10),
          ],),
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 5,
                // width: 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              title: Text("Menu",style: TextStyle(color: Colors.black)),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context,index){
                  return foodItem(index);
                },
                    childCount: 15
                ))
          ],
        ),
      );
    }
  );
}