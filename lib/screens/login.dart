import 'package:flutter/material.dart';
import 'package:socialquiz/services/auth.dart';

class FormCard extends StatefulWidget {
  @override
  _FormCardState createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  var authServices = AuthServices();

  @override
  void initState() {
    //loggedIn = authServices.googleSignIn.currentUser != null ? true : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          Text(
            "Login",
            style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 40),
          ),
          SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {
              setState(() async {
                authServices.signInWithGoogle();
              });
            },
            child: Container(
                height: 55,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                    child: Text(
                  "Login with Google",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 16,
                    fontFamily: 'Poppins-Medium',
                  ),
                  textAlign: TextAlign.center,
                ))),
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {
              setState(() {});
            },
            child: Container(
                height: 55,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                    child: Text(
                  "Connect with Youtube",
                  style: TextStyle(
                    color: Colors.redAccent,
                    letterSpacing: 1.5,
                    fontSize: 16,
                    fontFamily: 'Poppins-Medium',
                  ),
                  textAlign: TextAlign.center,
                ))),
          ),
          SizedBox(
            height: 300,
          )
        ],
      ),
    );
  }
}
