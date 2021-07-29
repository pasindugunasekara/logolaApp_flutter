import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:legola_app/widgets/colors.dart';
import 'package:legola_app/widgets/newsfeed.dart';
import 'package:legola_app/widgets/story-image.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            Navigator.pushNamed(context, '/mainpage');
          },
        ),
        title: Stack(
          children: <Widget>[
            Text(
              'Legola',
              style: TextStyle(
                fontSize: 25,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.blue[700],
              ),
            ),
            // Solid text as fill.
            Text(
              'Legola',
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.facebookMessenger),
            color: Colors.black,
            iconSize: 30,
            onPressed: () {
              Navigator.pushNamed(context, '/insidepage1');
            },
          ),
          IconButton(
            splashRadius: 15,
            icon: Icon(
              FontAwesomeIcons.bars,
              color: Colors.black,
            ),
            onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
          ),
        ],
      ),
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30),
                    ),
                    Text(
                      'Asha madushani',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              // title: FlatButton(onPressed: () {}, child: Text('setting')),
              leading: Icon(Icons.local_activity),
              title: Text(
                'Active',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/notification');
              },
            ),
            ListTile(
              // title: FlatButton(onPressed: () {}, child: Text('activity')),
              leading: Icon(Icons.edit),
              title: Text(
                'Edit Profile',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/editprofile');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Setting',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),
          ],
        ),
      ),
      body: getBody(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 5, top: 5, right: 5),
          child: Row(
              children: List.generate(stories.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 80,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        stories[index]['isStory']
                            ? Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient:
                                      LinearGradient(colors: bgStoryColors),
                                  border: Border.all(
                                    width: 0.5,
                                    color: Colors.white,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: Colors.white),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                stories[index]['imageUrl']),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 0,
                                        color: Colors.white,
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              stories[index]['imageUrl']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                        stories[index]['isAdd']
                            ? Positioned(
                                right: 5,
                                bottom: 0,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      stories[index]['username'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            );
          })),
        ),
        Divider(),
        Column(
            children: List.generate(newFeeds.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 15, left: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(colors: bgStoryColors),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(width: 1, color: bgWhite),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            newFeeds[index]["profile"]),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            newFeeds[index]['username'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Icon(
                        FontAwesomeIcons.ellipsisV,
                        size: 16,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(newFeeds[index]['imageUrl']),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          );
        }))
      ],
    );
  }

  Widget getBottomNavigationBar() {
    return Container(
      // height: 70,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
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
                onPressed: () {
                  Navigator.pushNamed(context, '/imagesviewer');
                }),
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
