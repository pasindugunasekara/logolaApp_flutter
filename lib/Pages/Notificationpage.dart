import 'package:flutter/material.dart';
import 'package:legola_app/widgets/colors.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Stack(
          children: <Widget>[
            Text(
              'Activity',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.blue[700],
              ),
            ),
            // Solid text as fill.
            Text(
              'Activity',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            Navigator.pushNamed(context, '/startpage');
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
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: bgWhite),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://apicms.thestar.com.my/uploads/images/2020/12/21/981174.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Anna Lipa and 20 others \nstarted follow you.'
                            ' 3 h',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Earlier',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              // ListTile(
              //   // title: FlatButton(onPressed: () {}, child: Text('setting')),
              //   leading: Icon(Icons.people),
              //   title: Text(
              //     'Follow invite friends',
              //     style: TextStyle(fontSize: 20),
              //   ),
              //   onTap: () {},
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                    children: List.generate(10, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width: 1, color: bgWhite),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://apicms.thestar.com.my/uploads/images/2020/12/21/981174.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '_yashh_02_liked your photo'
                              ' \n2 w',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(width: 1, color: bgWhite),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT13jbRHjIxoAsDukVdpD-SbRgOmcbzwDOShg&usqp=CAU'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ],
                    ),
                  );
                })),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBottomNavigationBar() {
    return Container(
      // height: 70,
      decoration: BoxDecoration(color: Colors.grey, border: Border()),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                }),
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.add_a_photo,
                  size: 30.0,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/notification');
                }),
            IconButton(
                iconSize: 20,
                icon: Image.asset(
                  'assets/earth.png',
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/map');
                })
          ],
        ),
      ),
    );
  }
}
