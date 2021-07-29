import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;

  _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  _onCamerMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
          title: 'this is a title',
          snippet: 'this is a snippet',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  Widget button(Function function, IconData icon) {
    return FloatingActionButton(
      onPressed: function,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      backgroundColor: Colors.blue,
      child: Icon(
        icon,
        size: 36.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: <Widget>[
            Text(
              'Google Map',
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
              'Google Map',
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
            mapType: _currentMapType,
            markers: _markers,
            onCameraMove: _onCamerMove,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                children: <Widget>[
                  button(_onMapTypeButtonPressed, Icons.map),
                  SizedBox(
                    height: 16.0,
                  ),
                  button(_onAddMarkerButtonPressed, Icons.add_location)
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: getBottomNavigationBar(),
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
}
