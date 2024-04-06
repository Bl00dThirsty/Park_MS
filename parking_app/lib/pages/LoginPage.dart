import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/components/MyButton.dart';
import 'package:smart_car_parking/components/MyTextField.dart';
import 'package:smart_car_parking/pages/MapPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController demo = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: const Text("😍 L O G I N 🌳"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              const Row(
                children: [
                  Text(
                    "Welcome back ❤️",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              MyTextField(
                  icons: Icons.email, lable: "Email id", Onchange: demo),
              const SizedBox(height: 10),
              MyTextField(
                  icons: Icons.password, lable: "Password", Onchange: demo),
              const SizedBox(height: 90),
              MyButton(
                icon: Icons.admin_panel_settings_rounded,
                Btname: "LOGIN",
                ontap: () {
                  Get.offAll(const MapPage());
                },
              ),
              // SizedBox(height: 20),
              // MyButton(
              //   icon: Icons.person_add,
              //   Btname: "SIGN UP",
              //   ontap: () {},
              // ),
            ]),
          ),
        ),
      ),
    );
  }
}
