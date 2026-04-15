import 'package:flutter/material.dart';

class SwiggyUI extends StatelessWidget {
  const SwiggyUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              /// 🔥 BACKGROUND (Restaurant Image)
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1555396273-367ea4eb4db5"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              /// 🔥 RESTAURANT INFO
              Positioned(
                top: 250,
                left: 16,
                right: 16,
                child: Text(
                  "Domino's Pizza",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) {
                return buildBottomSheet();
              },

            ); },
          child: Text("Show buttomsheet"),
         )
        ],
      ),
    );
  }

  Widget buildBottomSheet() {
    return DraggableScrollableSheet(
      builder: (BuildContext context, ScrollController scrollController) {
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
    },);
  }

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

          /// DETAILS
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pizza Item $index",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis, // 🔥 important
                ),
                SizedBox(height: 5),
                Text("₹199"),
              ],
            ),
          ),

          /// BUTTON
          SizedBox(
            width: 70, // ✅ FIXED WIDTH
            child: ElevatedButton(
              onPressed: () {},
              child: Text("ADD"),
            ),
          ),
        ],
      ),
    );
  }
}