import 'package:flutter/material.dart';

class ImageViewer extends StatefulWidget {
  const ImageViewer({Key key}) : super(key: key);

  @override
  _ImageViewerState createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.grey[350],
              expandedHeight: 250.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,

                title: Stack(
                  children: <Widget>[
                    Text(
                      'Galary',
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
                      'Galary',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
                // Solid text as fill.

                background: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.network(
                    'https://www.dutyfreehunter.com/blog/wp-content/uploads/2020/03/Gal-Gadot-Bolon-Eyewear-Campaign-01.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: _buildContent(),
            )
          ],
        ),
        bottomNavigationBar: getBottomNavigationBar(),
      ),
    );
  }

  GridView _buildContent() {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: <Widget>[
        _buildImageWidget('assets/galary/coverpage.jpg'),
        _buildImageWidget('assets/galary/Gal-Gadot-e1610811110154.jpg'),
        _buildImageWidget('assets/galary/gal3.jpg'),
        _buildImageWidget('assets/galary/gal4.webp'),
        _buildImageWidget('assets/galary/gal5.jfif'),
        _buildImageWidget('assets/galary/gal6.webp'),
        _buildImageWidget(
            'assets/galary/female-tourists-hand-have-happy-travel-map_1150-7411.jpg'),
        _buildImageWidget('assets/galary/1.jpg'),
        _buildImageWidget('assets/galary/2.jpg'),
        _buildImageWidget('assets/galary/3.jpg'),
        _buildImageWidget('assets/galary/4.jpg'),
        _buildImageWidget('assets/galary/5.jpg'),
        _buildImageWidget('assets/galary/6.jpg'),
        _buildImageWidget('assets/galary/7.jpg'),
        _buildImageWidget('assets/galary/8.jpg'),
        _buildImageWidget('assets/galary/9.jpg'),
      ],
    );
  }

  Image _buildImageWidget(String imagePath) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
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
