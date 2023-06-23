  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'apiservices.dart';

class WorkshopsEventscreen extends StatefulWidget {
    const WorkshopsEventscreen({Key? key}) : super(key: key);

    @override
    State<WorkshopsEventscreen> createState() => _WorkshopsEventscreenState();
  }

  class _WorkshopsEventscreenState extends State<WorkshopsEventscreen> {
    bool isloadind =false;

    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      selecteduserinlist();
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.white70,
          title: Text("All Events Page",style: TextStyle(color: Colors.black)),
        ),
        body:SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              isloadind
                  ? Align(
                heightFactor: 18,
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  color: Color(0xFF2C6975),
                ),
              )
                  :
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:eventlist.length,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        ListTile(

                          title: Container(
                            height: 130,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment:
                              CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(
                                          right: 8),
                                      child: Container(


                                          decoration:
                                          BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                          ),

                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.network(
                                              eventlist[index]["thumb_url"],
                                              fit: BoxFit.cover,
                                              width: 100,
                                              height: 150.0,

                                            ),
                                          )

                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment
                                          .start,
                                      children: [
                                        Container(

                                          width: 195,
                                          child: Text(
                                            eventlist[index]["eventname"],
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily:
                                                "Nunito-Bold"),
                                          ),
                                        ),
                                        Text(
                                          eventlist[index]["label"],
                                          style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 13,
                                              fontFamily:
                                              "Nunito-Regular"),
                                        ),
                                        Container(
                                          width: 100,
                                          child: Text(
                                            eventlist[index]["location"],
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 13,
                                                fontFamily:
                                                "Nunito-Regular"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 25,
                                          decoration:
                                          BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.black12,
                                          ),

                                          child: Icon(Icons.file_upload_outlined),
                                        ),
                                        SizedBox(width: 10,),
                                        Container(
                                          height: 25,
                                          width: 25,
                                          decoration:
                                          BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.black12,
                                          ),

                                          child: Icon(Icons.star_border),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    );
                  })
            ],
          ),
        ),
      );
    }
    List eventlist = [];
    var selacteduserlist;
    var check;
    Future<void> selecteduserinlist() async {
      isloadind = true;
      ApiService apiService = ApiService();
      apiService.workshopeseventlist().then(
            (value) => setState(() {
          selacteduserlist = value;
          eventlist = selacteduserlist['item'];
          check = eventlist[2]["eventname"].toString();
          print(check);
          isloadind = false;

          print(eventlist);
          // print(selacteduserlist);
          print("+++++++++++Compaleted");

          //print("basicdetails msg :"+basicdetailslistres['meta'].toString() );

        }),
      );
    }
  }
