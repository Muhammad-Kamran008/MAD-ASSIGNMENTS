import 'package:flutter/material.dart';
import '../task1/login_screen.dart';

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
