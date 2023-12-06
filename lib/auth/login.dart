import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phonofix_app/utils/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: (() => {}),
                  child: Text('I already have an account'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ColorsValue().blue_gray)),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
