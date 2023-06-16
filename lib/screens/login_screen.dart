import 'package:flutter/material.dart';
import 'package:login_app/screens/home_screen.dart';

TextStyle myStyle = TextStyle(fontSize: 30);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final userNameFeild = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      // style: myStyle,
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final passwordFeild = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      // style: myStyle,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final myLoginButton = Material(
      color: Colors.blue,
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(30),
        onPressed: () {
          if (username == "Naresh Dhimal" && password == "pass1234") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen(username)));
          } else {
            print("login faild");
          }
        },
        child: Text("Login"),
      ),
    );
    return Scaffold(
      body: Center(
          child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.supervised_user_circle,
                      size: 100,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    userNameFeild,
                    SizedBox(
                      height: 20,
                    ),
                    passwordFeild,
                    SizedBox(
                      height: 10,
                    ),
                    myLoginButton,
                  ],
                ),
              ))),
    );
  }
}
