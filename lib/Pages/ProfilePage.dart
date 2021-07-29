import 'package:flutter/material.dart';
import 'package:legola_app/Pages/MainPage.dart';
import 'package:legola_app/widgets/background_image.dart';
import 'package:legola_app/widgets/palatte.dart';

class InsidePage1 extends StatefulWidget {
  const InsidePage1({Key key}) : super(key: key);

  @override
  _InsidePage1State createState() => _InsidePage1State();
}

class _InsidePage1State extends State<InsidePage1> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        backgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    // height: 400,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'ASHA MADUSHANI',
                        style: kHeading,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            // height: 100,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                '  1250 \nFollowers',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            // height: 100,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                '  992 \nFollowing',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
                            alignment: Alignment.bottomRight,
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              child: Text(
                                '>>>',
                                style: klast,
                              ),
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
                                      return StartPage();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
