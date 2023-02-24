import 'package:flutter/material.dart';
import 'package:flutter_demo/utlies/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey();

  movetoHome(BuildContext context) async {
    // if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomePage);
      setState(() {
        changeButton = false;
      });
    
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              Text(
                "welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username is Required";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username is Required";
                        } else if (value.length < 8) {
                          return "Characters must be 8";
                        }
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        // splashColor: Colors.red,
                        onTap: () => movetoHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              // ElevatedButton(
                              //   onPressed: () async {
                              //     await Future.delayed(Duration(seconds: 1));
                              //     Navigator.pushNamed(context, MyRoutes.HomePage);
                              //   },
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                          // decoration: BoxDecoration(
                          //     color: Colors.deepPurple,
                          // shape:
                          //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                          // borderRadius:
                          //     BorderRadius.circular(changeButton ? 50 : 8)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // child: Center(
        // child: Text(
        // "Login Page",
        //style: TextStyle(
        //fontSize: 30,
        //color: Colors.brown,
        //fontWeight: FontWeight.bold,
        //),
        //),
        //),
      ),
    );
  }
}
