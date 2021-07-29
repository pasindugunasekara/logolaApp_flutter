import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:legola_app/Pages/ProfilePage.dart';
import 'package:legola_app/Pages/SignUp.dart';
import 'package:legola_app/widgets/palatte.dart';

class FirstPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    // ignore: unused_local_variable
    double defaultLoginSize = size.height - (size.height * 0.2);
    // ignore: unused_local_variable
    double defaultRegisterSize = size.height - (size.height * 0.1);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/coverpage.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.darken)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                width: size.width,
                height: size.height - 30,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white.withOpacity(0.18)),
                  child: Column(
                    children: [
                      // SizedBox(
                      //   height: 25,
                      // ),
                      Image.asset('assets/profile.png',
                          height: size.height * 0.25),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Container(
                        // margin:
                        //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        // padding:
                        //     EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        width: size.width * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          style: klast5,
                        ),
                      ),
                      Container(
                        // margin:
                        //     EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        // padding:
                        //     EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        width: size.width * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          style: klast5,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        width: size.width * 0.8,
                        // ignore: deprecated_member_use
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 1),
                                  transitionsBuilder: (context, animation,
                                      animationTime, child) {
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animation,
                                      child: child,
                                    );
                                  },
                                  pageBuilder:
                                      (context, animation, animationTime) {
                                    return InsidePage1();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'Go',
                              style: klast6,
                            )),
                      ),
                      // SizedBox(
                      //   height: 100,
                      // ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.8, color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green[900],
                        ),
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(seconds: 1),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  return ScaleTransition(
                                    alignment: Alignment.center,
                                    scale: animation,
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return SignUp();
                                },
                              ),
                            );
                          },
                          child: Text(
                            'Sign Up?',
                            style: klast8,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.8, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green[900]),
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          onPressed: () {
                            _gune(context);
                          },
                          child: Text(
                            'Fogot Password?',
                            style: klast8,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _gune(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext bc) {
          return Container(
            margin: EdgeInsets.only(top: 30.0),
            height: MediaQuery.of(context).size.height * .50,
            child: SingleChildScrollView(
              reverse: true,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Forget Password',
                        style: TextStyle(
                            fontSize: 22.0,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Enter your email for the verification process we will send 4 digit code to your email',
                          style: TextStyle(
                            fontSize: 18.0,
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            letterSpacing: 2,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                          fillColor: Colors.white30,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none)),
                    ),

                    // ignore: deprecated_member_use
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () {
                        _email(context);
                      },
                      child: Text(
                        "Conform",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _email(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext bc) {
          return Container(
            margin: EdgeInsets.only(top: 30.0),
            height: MediaQuery.of(context).size.height * .50,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: <Widget>[
                    Text('Enter 4 Digits Code',
                        style: TextStyle(
                            fontSize: 22.0,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'Enter the 4 digits code that you received on your email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PinCodeFields(
                      length: 4,
                      fieldBorderStyle: FieldBorderStyle.Square,
                      responsive: false,
                      fieldHeight: 40.0,
                      fieldWidth: 40.0,
                      borderWidth: 1.0,
                      activeBorderColor: Colors.pink,
                      activeBackgroundColor: Colors.pink.shade100,
                      borderRadius: BorderRadius.circular(10.0),
                      keyboardType: TextInputType.number,
                      autoHideKeyboard: false,
                      fieldBackgroundColor: Colors.black12,
                      borderColor: Colors.black38,
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                      onComplete: (output) {
                        // Your logic with pin code
                        print(output);
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      onPressed: () {
                        _gune2(context);
                      },
                      child: Text(
                        "Conform",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _gune2(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext bc) {
          return Container(
            margin: EdgeInsets.only(top: 30.0),
            height: MediaQuery.of(context).size.height * .50,
            child: Column(
              // padding: const EdgeInsets.all(8.0),
              // child: Text('Edit This'),
              children: <Widget>[
                Text('Reset Password',
                    style: TextStyle(
                        fontSize: 22.0,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Set the new Password to access your account so you can login and access all the features',
                      style: TextStyle(
                        fontSize: 18.0,
                      )),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'password',
                      hintStyle: TextStyle(
                        letterSpacing: 2,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white30,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Conform Password',
                      hintStyle: TextStyle(
                        letterSpacing: 2,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white30,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none)),
                ),

                // ignore: deprecated_member_use
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/insidepage1');
                  },
                  child: Text(
                    "Conform",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                ),
              ],
            ),
          );
        });
  }
}
