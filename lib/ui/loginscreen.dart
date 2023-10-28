import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meriapp/constants/constants.dart';
import 'package:meriapp/ui/forgetscreen.dart';
import 'package:meriapp/ui/homescreen.dart';
import 'package:meriapp/ui/signupscreen.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  onLoginPressed(BuildContext context, name, memail, password) {
    String email = memail.text;
    if (email.contains("@") && email.contains(".com")) {
      print("Corerect Email");
      print("Email: ${password.text}");
      print("Password: ${password.text}");
      Constants.name = name.text;
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => HomeView()));
    } else {
      print("InCorrect Email");
    }
    memail.text = "";
    password.text = "";
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            const SizedBox(height: 50),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                hintText: "Name",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                hintText: "Email Address",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  border: OutlineInputBorder()),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ForgetView()));
              },
              // onDoubleTap: (){
              //   print("ON DOUBLE TAP");
              // },
              child: Container(
                alignment: Alignment.topRight,
                child: Text("Forget Password?"),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  onLoginPressed(context, nameController, emailController,
                      passwordController);
                },
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Login"),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignupView()));
              },
              child: Text("Don't have account? Signup"),
            )
          ],
        ),
      ),
    );
  }
}
