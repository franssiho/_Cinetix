import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screen/homescreen.dart';
import 'package:flutter_application_1/screen/login_screen.dart';
import 'package:flutter_application_1/utils/mytheme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  get color => null;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: MyTheme.splash,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
        height: _size.height,
        width: _size.width,
        child: Column(
          children: [
            SvgPicture.asset("assets/logo2.svg", width: 200, height: 200,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(19),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 59, 12, 30),
              borderRadius: BorderRadius.circular(10), 
            ),
            width: _size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                  child: Text("Register to your account",
                  style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w900
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Username',
                      style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Enter Username",
                            hintStyle: const TextStyle(color: Colors.white),
                            fillColor: Color.fromARGB(255, 85, 44, 60),
                            filled: true,
                            ),
                          ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                ),
                                ),
                                SizedBox(height: 8),
                                TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Colors.white),
                                      ),
                                      hintText: "Enter Email",
                                      hintStyle: const TextStyle(color: Colors.white),
                                      fillColor: Color.fromARGB(255, 85, 44, 60),
                                      filled: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Password',
                      style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Enter Password",
                            hintStyle: const TextStyle(color: Colors.white),
                            fillColor: Color.fromARGB(255, 85, 44, 60),
                            filled: true,
                            ),
                          ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Confirm Password',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                ),
                                ),
                                SizedBox(height: 8),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Colors.white),
                                      ),
                                      hintText: "Confirm Password",
                                      hintStyle: const TextStyle(color: Colors.white),
                                      fillColor: Color.fromARGB(255, 85, 44, 60),
                                      filled: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            ) ,
                          child: Text("Login",
                          style: TextStyle(color: Colors.white, 
                          fontWeight: FontWeight.w600),
                          ),
                          ),
                      ),

                      ElevatedButton(onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 110, 47, 194),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text("Register", style: TextStyle(fontSize: 16),
                          ),
                        ),
                        ),
                        ),
                      ],
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}