import 'package:flutter/material.dart';
import 'package:login/components/input_default.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.only(
            left: 30.0,
            top: 80.0,
            right: 10.0,
            bottom: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputDefault(
                      helperText: "Yourmail@gmail.com",
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
