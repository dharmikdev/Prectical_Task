import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practicaltask/EventScreen/AllEvents.dart';

import 'EventScreen/BusinessEvent.dart';
import 'EventScreen/MusicEvent.dart';
import 'EventScreen/SportsEvent.dart';
import 'EventScreen/WorkshopesEvents.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              centerTitle: false,
              bottom: AppBar(
                title: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: 40,
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for something',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Other Sliver Widgets

          ],
        ) ,
      ),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  _showDialog(context);
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20), ),
                    color: Colors.white54

                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.category_outlined),
                      Text("Category")
                    ],
                  ),

                ),
              ),
              Container(
                height: 50,
                width: 120,
                  color: Colors.white54,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_month_rounded),
                  Text("Date&Time")
                ],
              ),

              ),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20), ),
                    color: Colors.white54
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(Icons.swap_vert_outlined),
                    Text("Sort")
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  void _showDialog(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder( // <-- SEE HERE
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 8,bottom: 8),
                child: Text("Category",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
                ),
              ),
              Divider(
                height: 10,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 5.0, // gap between adjacent chips
                  runSpacing: 10.0, // gap between lines
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => AllEventScreen()));

                      },
                      child: Chip(
                          backgroundColor: Colors.blue
                              .withOpacity(0.10),
                          label: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 100,
                            child: Text("all",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontFamily: 'HK Medium')),
                          ),
                        ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => MusicEventscreen()));
                      },
                      child: Chip(
                        backgroundColor: Colors.blue
                            .withOpacity(0.10),
                        label: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          child: Text("music",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'HK Medium')),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => BusinessEventScreen()));
                      },
                      child: Chip(
                        backgroundColor: Colors.blue.withOpacity(0.10),
                        label: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          child: Text("business",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'HK Medium')),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => SportsEventScreen()));
                      },
                      child: Chip(
                        backgroundColor: Colors.blue
                            .withOpacity(0.10),
                        label: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          child: Text("sports",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'HK Medium')),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => WorkshopsEventscreen()));
                      },
                      child: Chip(
                        backgroundColor: Colors.blue
                            .withOpacity(0.10),
                        label: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 100,
                          child: Text("workshops",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'HK Medium')),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
