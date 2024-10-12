import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hwapp/app/modules/registrasi/views/registrasi_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());
  final TextEditingController usernameController =
      TextEditingController(); // Tambahkan controller untuk username
  final TextEditingController passwordController =
      TextEditingController(); // Tambahkan controller untuk password

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
              "Login",
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
              "Enter your username and password to login",
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
              controller:
                  usernameController, // Hubungkan TextField dengan controller
              keyboardType: TextInputType.text,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: "Username",
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
              controller:
                  passwordController, // Tambahkan TextEditingController untuk password
              keyboardType: TextInputType.text,
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
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  color: Colors.black54,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
              child: InkWell(
                onTap: () => _kliklogin(),
                child: SizedBox(
                  height: 60.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Color.fromARGB(255, 30, 173, 42),
                    color: Color.fromARGB(255, 9, 92, 27),
                    elevation: 7.0,
                    child: const Center(
                      child: Text(
                        'Login',
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
                      Get.to(
                          () => RegistrasiView()); // Navigate to RegisterPage
                    },
                    child: Text(
                      "dont have account? register",
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      )),
    );
  }

  _kliklogin() {
    final username = usernameController.text.trim();
    controller.kliklogin(username);
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginView(),
  ));
}
