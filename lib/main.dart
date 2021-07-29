import 'package:flutter/material.dart';

import 'package:legola_app/Pages/FirstPage2.dart';
import 'package:legola_app/Pages/GoogleMap.dart';
import 'package:legola_app/Pages/ProfilePage.dart';

import 'Pages/EditProfile.dart';
import 'Pages/HomePage.dart';
import 'Pages/Notificationpage.dart';
import 'Pages/Security.dart';
import 'Pages/SettingPage.dart';
import 'Pages/MainPage.dart';
import 'Pages/image.dart';

// import 'dart:async';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: FirstPageTwo(),
      routes: <String, WidgetBuilder>{
        '/insidepage1': (context) => InsidePage1(),
        '/map': (context) => LogIn(),
        '/setting': (context) => SettingPage(),
        '/secutity': (context) => SecutityPage(),
        '/editprofile': (context) => EditProfile(),
        '/startpage': (context) => StartPage(),
        '/homepage': (context) => HomePage(),
        '/notification': (context) => NotificationPage(),
        '/imagesviewer': (context) => ImageViewer(),
        '/mainpage': (context) => StartPage(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Completer<GoogleMapController> _controller = Completer();
//   static const LatLng _center = const LatLng(45.521563, -122.677433);
//   final Set<Marker> _markers = {};
//   LatLng _lastMapPosition = _center;
//   MapType _currentMapType = MapType.normal;

//   _onMapCreated(GoogleMapController controller) {
//     _controller.complete(controller);
//   }

//   _onCamerMove(CameraPosition position) {
//     _lastMapPosition = position.target;
//   }

//   _onMapTypeButtonPressed() {
//     setState(() {
//       _currentMapType = _currentMapType == MapType.normal
//           ? MapType.satellite
//           : MapType.normal;
//     });
//   }

//   _onAddMarkerButtonPressed() {
//     setState(() {
//       _markers.add(Marker(
//         markerId: MarkerId(_lastMapPosition.toString()),
//         position: _lastMapPosition,
//         infoWindow: InfoWindow(
//           title: 'this is a title',
//           snippet: 'this is a snippet',
//         ),
//         icon: BitmapDescriptor.defaultMarker,
//       ));
//     });
//   }

//   Widget button(Function function, IconData icon) {
//     return FloatingActionButton(
//       onPressed: function,
//       materialTapTargetSize: MaterialTapTargetSize.padded,
//       backgroundColor: Colors.blue,
//       child: Icon(
//         icon,
//         size: 36.0,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//           backgroundColor: Colors.blue,
//         ),
//         body: Stack(
//           children: <Widget>[
//             GoogleMap(
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: CameraPosition(
//                 target: _center,
//                 zoom: 11.0,
//               ),
//               mapType: _currentMapType,
//               markers: _markers,
//               onCameraMove: _onCamerMove,
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: Column(
//                   children: <Widget>[
//                     button(_onMapTypeButtonPressed, Icons.map),
//                     SizedBox(
//                       height: 16.0,
//                     ),
//                     button(_onAddMarkerButtonPressed, Icons.add_location)
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ));
//   }
// }
