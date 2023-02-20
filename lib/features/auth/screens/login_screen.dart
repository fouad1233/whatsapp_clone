import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:country_picker/country_picker.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;
  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country localcountry) {
          setState(() {
            country = localcountry;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'WhatsApp will need to verify your phone number.',
            ),
            SizedBox(height: size.height * 0.02),
            TextButton(
              onPressed: pickCountry,
              child: const Text('Pick code'),
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              children: [
                if (country != null) Text('+${country!.phoneCode}'),
                SizedBox(width: size.width * 0.05),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your phone number',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.55),
            SizedBox(
              width: size.width * 0.30,
              child: CustomButton(
                onPressed: () {},
                text: 'NEXT',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
