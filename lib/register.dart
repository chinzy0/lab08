import 'package:flutter/material.dart';
import 'package:lab08/service/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

final _formkey = GlobalKey<FormState>();

TextEditingController _emailcontroller = TextEditingController();
TextEditingController _passwordcontroller = TextEditingController();
TextEditingController _namecontroller = TextEditingController();
TextEditingController _telcontroller = TextEditingController();

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register page"),
      ),
      body: SafeArea(
          child: Form(
        key: _formkey,
        child: ListView(
          children: [
            Text("Email"),
            TextFormField(
              controller: _emailcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอกอีเมล";
                }
                return null;
              },
            ),
            Text("Password"),
            TextFormField(
              controller: _passwordcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอกรหัส";
                }
                return null;
              },
            ),
            Text("Name"),
            TextFormField(
              controller: _namecontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอกชื่อ";
                }
                return null;
              },
            ),
            Text("Tel"),
            TextFormField(
              controller: _telcontroller,
              validator: (value) {
                if (value!.isEmpty) {
                  return "กรุณากรอกเบอร์โทรศัพท์";
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  print(FirebaseAuth.instance.currentUser);
                  final uid = FirebaseAuth.instance.currentUser!.uid;
                },
                child: Text("Save")),
          ],
        ),
      )),
    );
  }
}
