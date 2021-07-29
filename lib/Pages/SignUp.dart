import 'package:flutter/material.dart';
import 'package:legola_app/Pages/FirstPage2.dart';
import 'package:legola_app/Pages/ProfilePage.dart';
import 'package:legola_app/widgets/palatte.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = size.height - (size.height * 0.2);
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
                      color: Colors.white.withOpacity(0.2)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'SignUp',
                        style: klast4,
                      ),
                      SizedBox(
                        height: 25,
                      ),
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
                            hintText: 'Email',
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
                            hintText: 'Mobile Number',
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
                            hintText: 'UserName',
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

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        // alignment: Alignment.bottomCenter,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.8, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green[900]),
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
                                  return InsidePage1();
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
                        height: 10,
                      ),
                      Container(
                        // alignment: Alignment.bottomCenter,
                        height: 30,

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
                                  return FirstPageTwo();
                                },
                              ),
                            );
                          },
                          child: Text(
                            'Have An Account? Log In',
                            style: klast8,
                          ),
                        ),
                      ),
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
}
