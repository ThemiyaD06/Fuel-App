import 'package:flutter/material.dart';
import 'package:fuel_app/pages/auth/register_station_page.dart';
import 'package:fuel_app/pages/auth/register_user_page.dart';
import 'package:fuel_app/widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                nextScreen(context, UserRegistrationScreen());
              },
              child: const Text('User Registration?'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                nextScreen(context, StationRegisterScreen(
                ));
              },
              child: const Text('Station Registration?'),
            ),
          ],
        ),
      ),
    );
  }
}