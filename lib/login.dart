import 'package:flutter/material.dart';
import 'package:lab08/register.dart';
import 'package:lab08/service/auth_service.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

final _formkey = GlobalKey<FormState>();
TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passwordcontroller = TextEditingController();

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: SafeArea(
          child: Form(
        child: ListView(
          children: [
            Text("Email"),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please input your email";
                }
              },
            ),
            Text("Password"),
            TextFormField(
              controller: _passwordcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please input your password";
                }
              },
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Login")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Registerpage(),
                    ),
                  );
                },
                child: const Text("Register")),
          ],
        ),
      )),
    );
  }
}
