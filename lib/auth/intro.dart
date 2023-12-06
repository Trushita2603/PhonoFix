import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phonofix_app/utils/routes.dart';

import '../utils/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

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
                "PhonoFix",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: Image.asset(
                  'assets/images/intro.png',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Unlock clear speech for \n your child",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
                indent: 60,
                endIndent: 60,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Fast, Fun and Effective \n way to learn",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: (() => {}),
                  child: Text('Get Started to free!'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ColorsValue().secondary)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: (() => {
                        Navigator.pushNamed(
                            context, PhonofixRoutes().loginRoute)
                      }),
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
    ;
  }
}
