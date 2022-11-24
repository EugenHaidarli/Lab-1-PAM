import 'package:flutter/material.dart';
import 'package:lab_3_final/screens/quiz_screen/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 130),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/pi_day_41.png', height: 252,width: 252),
                ]
            ),
            const Spacer(flex: 6),
            Text("Math for\neveryone",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.black, fontWeight: FontWeight.w600, fontSize: 40
              ),
            ),
            const Spacer(flex: 6),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuizScreen()));
              },
              child: Container(
                width: 270,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20 * 0.75),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text (
                  "Start",
                  style: Theme.of(context).textTheme.button?.copyWith(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
      ),
    );
  }
}
