import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/profile_page_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homescreen.dart';
import 'payment_screen.dart';

class SeatsPage extends StatefulWidget {
  const SeatsPage({super.key});

  // final CardItem item;
  //  SeatsPage({
  // Key? key,
  // required this.item,
  // }) : super(key: key);

  @override
  State<SeatsPage> createState() => _SeatsPageState();
}

class _SeatsPageState extends State<SeatsPage> {

  bool click = true;
  DateTime _dateTime = DateTime.now();

  void  _showDatePicker() {
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2099)).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: Color(0xff00223e),),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,

            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: IconButton(onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            ), icon: Icon(Icons.home)),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: IconButton(onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SeatsPage()),
                            ), icon: Icon(Icons.airplane_ticket)),
                label: 'Ticket',
              ),
              BottomNavigationBarItem(
                icon: IconButton(onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProfilePageScreen()),
                            ) , icon: Icon(Icons.person)),
                label: 'Profile',
              ),
            ],
          ),
        ),
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff0b0a0d),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 67.77),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 44,
                                    height: 44,
                                    child: OutlinedButton(
                                      onPressed: () =>Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            ),
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(8),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 61,
                                  ),
                                  Text(
                                    'Choose Seats',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          height: 1.5),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 61,
                                  ),
                                  Container(
                                    width: 44,
                                    height: 44,
                                    child: OutlinedButton(
                                      onPressed: _showDatePicker,
                                      child: Icon(
                                        Icons.calendar_month,
                                        color: Colors.white,
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 0, 5, 30),
                                    padding:
                                        EdgeInsets.fromLTRB(0, 0.01, 0, 0.01),
                                    width: double.infinity,
                                    height: 15.47,
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 0, 29.77),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    20, 0, 20, 20),
                                                width: double.infinity,
                                                height: 22,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 90, 0),
                                                      height: double.infinity,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 30,
                                                            height: 22,
                                                            child: IconButton(
                                                              onPressed: () {
                                                                showDialog(
                                                                  context: context,
                                                                  builder: (context) => SimpleDialog(
                                                                    title: const Text('Peringatan!'),
                                                                    contentPadding: const EdgeInsets.all(20),
                                                                    children: [
                                                                      const Text('Kursi Telah Dipesan.'),
                                                                      SizedBox(height: 20,),
                                                                      TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text('Close'))
                                                                    ],
                                                                  )
                                                                );
                                                              },
                                                              icon: Icon(
                                                                Icons.chair,
                                                                color:
                                                                    Colors.pink,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 30,
                                                            height: 22,
                                                            child: IconButton(
                                                              onPressed: () {
                                                                showDialog(
                                                                  context: context,
                                                                  builder: (context) => SimpleDialog(
                                                                    title: const Text('Peringatan!'),
                                                                    contentPadding: const EdgeInsets.all(20),
                                                                    children: [
                                                                      const Text('Kursi Telah Dipesan.'),
                                                                      SizedBox(height: 20,),
                                                                      TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text('Close'))
                                                                    ],
                                                                  )
                                                                );
                                                              },
                                                              icon: Icon(
                                                                Icons.chair,
                                                                color:
                                                                    Colors.pink,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            
                                                            width: 30,
                                                            height: 22,
                                                            child: IconButton(
                                                              color: Colors.white,
                                                              onPressed: () {
                                                              },
                                                              icon: Icon(Icons.chair)
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      height: double.infinity,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              width: 30,
                                                              height: 22,
                                                              child: IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: Icon(
                                                                  Icons.chair,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 30,
                                                              height: 22,
                                                              child: IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: Icon(
                                                                  Icons.chair,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 30,
                                                              height: 22,
                                                              child: IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: Icon(
                                                                  Icons.chair,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ]),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 22,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 50, 0),
                                                      height: double.infinity,
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              height: double
                                                                  .infinity,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      width: 30,
                                                                      height:
                                                                          22,
                                                                      child:
                                                                          IconButton(
                                                                        onPressed:
                                                                            () {},
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .chair,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: 30,
                                                                      height:
                                                                          22,
                                                                      child:
                                                                          IconButton(
                                                                        onPressed:
                                                                            () {},
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .chair,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: 30,
                                                                      height:
                                                                          22,
                                                                      child:
                                                                          IconButton(
                                                                        onPressed:
                                                                            () {
                                                                              showDialog(
                                                                  context: context,
                                                                  builder: (context) => SimpleDialog(
                                                                    title: const Text('Peringatan!'),
                                                                    contentPadding: const EdgeInsets.all(20),
                                                                    children: [
                                                                      const Text('Kursi sudah anda pesan.'),
                                                                      SizedBox(height: 20,),
                                                                      TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text('Close'))
                                                                    ],
                                                                  )
                                                                );
                                                                            },
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .chair,
                                                                          color:
                                                                              Color(0xff09fbd3),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: 30,
                                                                      height:
                                                                          22,
                                                                      child:
                                                                          IconButton(
                                                                        onPressed:
                                                                            () {
                                                                              showDialog(
                                                                  context: context,
                                                                  builder: (context) => SimpleDialog(
                                                                    title: const Text('Peringatan!'),
                                                                    contentPadding: const EdgeInsets.all(20),
                                                                    children: [
                                                                      const Text('Kursi sudah anda pesan.'),
                                                                      SizedBox(height: 20,),
                                                                      TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text('Close'))
                                                                    ],
                                                                  )
                                                                );
                                                                            },
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .chair,
                                                                          color:
                                                                              Color(0xff09fbd3),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ]),
                                                            ),
                                                          ]),
                                                    ),
                                                    Container(
                                                      height: double.infinity,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 30,
                                                            height: 22,
                                                            child: IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(
                                                                Icons.chair,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 30,
                                                            height: 22,
                                                            child: IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(
                                                                Icons.chair,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 30,
                                                            height: 22,
                                                            child: IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(
                                                                Icons.chair,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 30,
                                                            height: 22,
                                                            child: IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(
                                                                Icons.chair,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 20),
                                          width: 350,
                                          height: 22,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                              ]),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 20),
                                          width: 350,
                                          height: 22,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                              ]),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 20),
                                          width: 350,
                                          height: 22,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                                Container(
                                                    width: 30,
                                                    height: 22,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: TextButton(
                                                      child: Text(''),
                                                      onPressed: () {},
                                                    )),
                                              ]),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(22, 0, 22, 0),
                                          width: double.infinity,
                                          height: 23,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 10, 0),
                                                      width: 10,
                                                      height: 10,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Available',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.5,
                                                              color: Colors
                                                                  .white)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 10, 0),
                                                      width: 10,
                                                      height: 10,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors.pink,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Reserved',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.5,
                                                              color: Colors
                                                                  .white)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 10, 0),
                                                      width: 10,
                                                      height: 10,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Color(0xff09fbd3),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Selected',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.poppins(
                                                          textStyle: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.5,
                                                              color: Colors
                                                                  .white)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.grey),
                              width: double.infinity,
                              height: 236,
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ListTile(
                                        leading: Icon(Icons.calendar_month,color: Colors.white,),
                                        title: Text(_dateTime.toString(),
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20
                                          )
                                        ),),
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.airplane_ticket,color: Colors.white,),
                                        title: Text('VIP Section - Seat 9,10',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20
                                          )
                                        ),),
                                        trailing: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(50)
                                          ),
                                          child: TextButton(child: Text('Buy',style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20
                                          )
                                        )),onPressed:() => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PaymentScreen())),),
                                        )
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.shopping_basket,color: Colors.white),
                                        title: Text('Total: Rp30.000',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20
                                          )
                                        ),),
                                      ),
                                    ],

                                    // children: [
                                    //   Positioned(
                                    //     left: 81,
                                    //     top: 131,
                                    //     child: Align(
                                    //       child: SizedBox(
                                    //         width: 200,
                                    //         height: 231,
                                    //       ),
                                    //     ),
                                    //   ),
                                    //   Positioned(
                                    //       child: Align(
                                    //     child: SizedBox(
                                    //       width: 390,
                                    //       height: 216,
                                    //     ),
                                    //   )),
                                    //   Positioned(
                                    //     left: 305,
                                    //     top: 73,
                                    //     child: ClipRect(
                                    //         child: Container(
                                    //           width: 70 ,
                                    //           height: 70 ,
                                    //           decoration: BoxDecoration(
                                    //             color: Color(0x26ffffff),
                                    //             borderRadius:
                                    //                 BorderRadius.circular(
                                    //                     10),
                                    //             border: Border(),
                                    //           ),
                                    //           child: Center(
                                    //             child: Text(
                                    //               'Buy',
                                    //               textAlign: TextAlign.center,
                                    //               style: GoogleFonts.poppins(
                                    //                 textStyle: TextStyle(
                                    //                   fontSize: 15,
                                    //                   color: Colors.white,
                                    //                   height: 1.5,
                                    //                   fontWeight: FontWeight.w400
                                    //                 )
                                    //               )
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ),
                                    // ],
                                  )
                                ],
                              ),
                            )
                          ]))
                ])));
  }
}
