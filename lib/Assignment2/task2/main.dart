import 'package:flutter/material.dart';
import './login_screen.dart';
import './my_profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Splash Screen',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/my_profile': (context) => MyProfileScreen(
              name: 'Muhammad Kamran',
              imageName: '/images/kamran.png',
              phone: '+92 346 9224444',
              email: 'kamran@gmail.com',
              biometric: false,
              address: 'NUST H-12, Ghazali Hostel',
            ),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80.0,
              width: 80.0,
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(width: 10.0),
            Text(
              'Flutter',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
