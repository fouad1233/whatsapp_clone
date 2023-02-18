import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 18,
            ),
            const Text(
              'Welcome to WhatsApp',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: size.height / 14),
            Image.asset(
              'assets/bg.png',
              height: size.height / 2,
              width: size.width / 1.2,
              color: tabColor,
            ),
            SizedBox(height: size.height / 18),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Read our Privacy Policy Tap, "Agree and Continue" to accept the Terms of Service.',
                style: TextStyle(
                  color: greyColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: size.height / 18),
            SizedBox(
              width: size.width *0.75,
              child: CustomButton(
                text: 'AGREE AND CONTINUE',
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}