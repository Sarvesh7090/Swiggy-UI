import 'package:flutter/material.dart';

import '../wigdet/bottom_sheet.dart';
import '../wigdet/top_sheet.dart';

class SwiggyUI extends StatefulWidget {
   const SwiggyUI({super.key});

  @override
  State<SwiggyUI> createState() => _SwiggyUIState();
}

class _SwiggyUIState extends State<SwiggyUI> {
ScrollController scrollController = ScrollController();

bool showTop = false;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      showTop = true;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
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
              // AnimatedPositioned(
              //   duration: Duration(milliseconds: 300),
              //   top: showTop ? 0 : -200,
              //   left: 0,
              //   right: 0,
              //   child: showTopSheet(context: context,showTop: showTop) ,
              // ),

            ],
          ),
          ElevatedButton(
            onPressed: () {
              return showTopSheet(context: context, showTop: true);
            },
            child: Text("Show top sheet"),
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




}