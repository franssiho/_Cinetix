import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_application_1/screen/homescreen.dart';
import 'package:flutter_application_1/screen/profile_page_screen.dart';
import 'package:flutter_application_1/screen/seatsPage.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onPayNowPressed() {
    _animationController.forward().whenComplete(() {
      _animationController.reset();
      _showPaymentSuccessSnackBar();
      
      
    });
  }


  void _showPaymentSuccessSnackBar() {
    final snackBar = SnackBar(
      content: Text('Pembayaran telah berhasil'),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showConfirmPaymentDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Payment?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                _onPayNowPressed();
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
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
      appBar: AppBar(
        title: Text('Payment Page'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.scale(
                  scale: 1 - (_animationController.value * 0.1),
                  child: ElevatedButton(
                    onPressed: _showConfirmPaymentDialog,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: Colors.blue,
                    ),
                    child: Text(
                      'Pay Now',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              },
            ),

            SizedBox(height: 20),

            Text(
              'Choose payment method:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PaymentOptionIconButton(
                  paymentMethod: 'PayPal',
                  icon: Icons.payment,
                ),
                SizedBox(width: 10),
                PaymentOptionIconButton(
                  paymentMethod: 'Dana',
                  icon: Icons.account_balance_wallet,
                ),
                SizedBox(width: 10),
                PaymentOptionIconButton(
                  paymentMethod: 'GoPay',
                  icon: Icons.monetization_on,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOptionIconButton extends StatelessWidget {
  final String paymentMethod;
  final IconData icon;

  const PaymentOptionIconButton({
    Key? key,
    required this.paymentMethod,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Selected payment method: $paymentMethod');
        _showPaymentMethodSelectedSnackBar(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Icon(icon, size: 40),
            ),
            Text(
              paymentMethod,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  void _showPaymentMethodSelectedSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Selected payment method: $paymentMethod'),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}