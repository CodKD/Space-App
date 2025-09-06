import 'package:flutter/material.dart';
import 'package:whats_app5/home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName= 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed:(){
          Navigator.of(context).pushNamed(HomeScreen.routeName );
          },
            child: Text('Login')),
      ),
    );
  }
}
