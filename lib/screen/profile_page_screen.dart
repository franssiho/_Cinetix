import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/aboutapp.dart';
import 'package:flutter_application_1/screen/homescreen.dart';
import 'package:flutter_application_1/screen/login_screen.dart';
import 'package:flutter_application_1/screen/seatsPage.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
            onPressed: () {},
            icon: IconButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen()))), icon: const Icon(Icons.arrow_back_ios))),
      ),
      body: ListView(
        children: [
          Container(
            child: const Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.account_circle,
                  ),
                ),
                title: Text('Username'),
                subtitle: Text('@username.com'),
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.account_circle,
              size: 37,
            ),
            title: const Text(
              'My Account',
            ),
            subtitle: const Text('Edit your account'),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.language,
              size: 37,
            ),
            title: const Text('Language'),
            subtitle: const Text('Change language'),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          const Divider(),
          ListTile(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginScreen()))),
            leading: const Icon(
              Icons.logout,
              size: 37,
            ),
            title: const Text('Logout'),
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          ListTile(
              onTap: () => Navigator.push((context), MaterialPageRoute(builder: ((context) => AboutScreen()))),
              leading: Icon(
                Icons.apps,
                size: 37,
              ),
              title: Text("About App")),
        ],
      ),
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
    );
  }
}
