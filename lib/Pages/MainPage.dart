import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:legola_app/widgets/images.dart';
import 'package:legola_app/widgets/palatte.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Stack(
          children: <Widget>[
            Text(
              'Legola',
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
              'Legola',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: getBody(size),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody(size) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: (size.width - 20) * 0.3,
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 1, color: Colors.grey[400]),
                              image: DecorationImage(
                                  image: AssetImage('assets/coverpage.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: (size.width - 20) * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '907',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '1250',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              // Text('Gal Galgot'),
              Text(
                '"It is not the strongest of the species\n that survives, nor the most intelligent, but the one most responsive to change"',
                style: klast2,
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 0.5,
          width: size.width,
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.8)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3),
          child: Row(
            children: [
              Container(
                width: (size.width * 0.5),
                child: IconButton(
                  splashRadius: 15,
                  icon: Icon(
                    FontAwesomeIcons.th,
                    color: selectedIndex == 0 ? Colors.black : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                ),
              ),
              Container(
                width: (size.width * 0.5),
                child: IconButton(
                  splashRadius: 15,
                  icon: Icon(
                    FontAwesomeIcons.idBadge,
                    color: selectedIndex == 1 ? Colors.black : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  height: 1,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      color: selectedIndex == 0
                          ? Colors.black
                          : Colors.transparent),
                ),
                Container(
                  height: 1,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      color: selectedIndex == 1
                          ? Colors.black
                          : Colors.transparent),
                ),
              ],
            ),
            Container(
              height: 0.5,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.8)),
            ),
          ],
        ),
        SizedBox(
          height: 3,
        ),
        IndexedStack(
          index: selectedIndex,
          children: [
            getImages(size),
          ],
        ),
      ],
    );
  }

  Widget getBottomNavigationBar() {
    return Container(
      height: 70,
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

  Widget getImages(size) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 3,
      runSpacing: 3,
      children: List.generate(images.length, (index) {
        return Container(
          height: 150,
          width: (size.width - 6) / 3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(images[index]), fit: BoxFit.cover)),
        );
      }),
    );
  }
}
