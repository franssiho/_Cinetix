import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homescreen.dart';
import 'package:flutter_application_1/screen/profile_page_screen.dart';
import 'package:flutter_application_1/screen/seatsPage.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
                gradient: LinearGradient(
              colors: <Color>[Color(0xff0a090c), Color(0xff130b2b)],
              begin: Alignment(-0.749, -0.979),
              end: Alignment(0.785, 0.983),
              stops: <double>[0, 1],
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())), icon: Icon(Icons.arrow_back,color: Colors.white,),),
            )
          ],)
      ),
    );
  }
}