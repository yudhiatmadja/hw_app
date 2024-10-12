import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:hwapp/app/modules/login/controllers/login_controller.dart';
import 'package:hwapp/app/modules/login/views/login_view.dart';

import '../controllers/registrasi_controller.dart';

class RegistrasiView extends GetView<RegistrasiController> {
  //const RegistrasiView({Key? key}) : super(key: key);
  final control = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
      ],
    );
    return Scaffold(
      backgroundColor: Color.fromRGBO(221, 165, 35, 0.4),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 80.0,
            ),
            Text(
              "Register",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Enter your details to register",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              keyboardType: TextInputType.text,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white,
                labelStyle: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.text,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white,
                labelStyle: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: "Phone Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white,
                labelStyle: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              autocorrect: true,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white,
                labelStyle: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white,
                labelStyle: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
              child: InkWell(
                onTap: _klikregister(),
                child: SizedBox(
                  height: 60.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Color.fromARGB(255, 30, 173, 42),
                    color: Color.fromARGB(255, 9, 92, 27),
                    elevation: 7.0,
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Montserrat"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
                child: TextButton(
                    onPressed: () {
                      Get.to(() => LoginView());
                    },
                    child: Text(
                      "dont have account? Login",
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      )),
    );
  }

  _klikregister() {}
}

void main() {
  runApp(MaterialApp(
    home: RegistrasiView(),
  ));
}
