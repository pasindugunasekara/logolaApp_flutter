import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class SecutityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Security',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            Navigator.pushNamed(context, '/setting');
          },
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('settings'),
            ),
            ListTile(),
            ListTile(),
            ListTile(),
            ListTile(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // ignore: deprecated_member_use
            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Icon(Icons.security)),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Password',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  _gune(context);
                },
                // onPressed: () => _onButtonPressed(),
              ),
            ),
            // ignore: deprecated_member_use
            Padding(
              padding: const EdgeInsets.all(5.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Icon(Icons.add_location_alt_outlined)),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Active Log',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  _password(context);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft, child: Icon(Icons.email)),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Edit Email',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  _email(context);
                },
                // onPressed: () => _onButtonPressed(),
              ),
            ),
            // ListTile(
            //   // title: FlatButton(onPressed: () {}, child: Text('setting')),
            //   leading: Icon(Icons.email),
            //   title: Text(
            //     'Email settings',
            //     style: TextStyle(fontSize: 20),
            //   ),
            //   onTap: () => Navigator.pop(context),
            // ),
          ],
        ),
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
            height: MediaQuery.of(context).size.height * .40,
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
                  onPressed: () {},
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

  void _password(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext bc) {
          return Container(
            margin: EdgeInsets.only(top: 30.0),
            height: MediaQuery.of(context).size.height * .40,
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
            height: MediaQuery.of(context).size.height * .40,
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
                      'Custom Pincode Fields',
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
                      onPressed: () {},
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
}
