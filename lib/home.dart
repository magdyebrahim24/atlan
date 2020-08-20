import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'drawer/drawer.dart';
import 'material/buttons.dart';
import 'widget/service_widget.dart';
import 'package:location/location.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
 static BitmapDescriptor myIcon;
  @override
  // ignore: must_call_super
   initState() {
    BitmapDescriptor.fromAssetImage(
        ImageConfiguration(size: Size(48, 48)),'img/black_car.png')
        .then((onValue) {
          myIcon = onValue;
    });
  }
  int x = 0 ;int y = 0 ; int z = 0 ; int marker = 0 ;
//  Position _currentPosition;

  LocationData currentLocation;
  var location = new Location();

  myCurrentLocation() async{
    try {
      currentLocation = await location.getLocation();
//      print("locationLatitude: ${currentLocation.latitude.toString()}");
//      print("locationLongitude: ${currentLocation.longitude.toString()}");
    } catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        String error = 'Permission denied';
        print(error);
      }
      currentLocation = null;
    }
    GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newLatLngZoom(
        LatLng(currentLocation.latitude, currentLocation.longitude), 15));
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.073714, 31.429422),
      zoom: 10.4746,
  );
  final Map<String, Marker> _markersX = {
        'marker1': Marker(
            markerId: MarkerId('1'),
            position: LatLng(31.073714, 31.429422),
            infoWindow: InfoWindow(title: 'Zeko', snippet: 'welcome to zeko Garage'),
        ),
        'marker2': Marker(
            markerId: MarkerId('2'),
            position: LatLng(31.080767770945798, 31.568114832043648),
            infoWindow: InfoWindow(title: 'Migo', snippet: 'welcome to mego Garage'),
        ),
        'marker3': Marker(
            markerId: MarkerId('3'),
            position: LatLng(31.075145037474176, 31.42983589321375),
            infoWindow: InfoWindow(title: 'Elbastawesy', snippet: 'Abdallah Talawos'),
        ),
        'marker4': Marker(
            markerId: MarkerId('4'),
            position: LatLng(31.074707403086364, 31.420750245451927),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker5': Marker(
            markerId: MarkerId('5'),
            position: LatLng(31.245866479688715, 31.45661775022745),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker6': Marker(
            markerId: MarkerId('6'),
            position: LatLng(30.96247625256887, 31.499262526631355),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker6': Marker(
            markerId: MarkerId('6'),
            position: LatLng(31.147047054558115, 31.263716630637646),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
  };
  final Map<String, Marker> _markersY = {
        'marker1': Marker(
            markerId: MarkerId('1'),
            position: LatLng(31.073714, 31.429422),
            infoWindow: InfoWindow(title: 'Zeko', snippet: 'welcome to zeko Garage'),
        ),
        'marker2': Marker(
            markerId: MarkerId('2'),
            position: LatLng(31.035047761843234, 31.38955783098936),
            infoWindow: InfoWindow(title: 'Migo', snippet: 'welcome to mego Garage'),
        ),
        'marker3': Marker(
            markerId: MarkerId('3'),
            position: LatLng(31.15042919857148, 31.447870396077633),
            infoWindow: InfoWindow(title: 'Elbastawesy', snippet: 'Abdallah Talawos'),
        ),
        'marker4': Marker(
            markerId: MarkerId('4'),
            position: LatLng(31.074707403086364, 31.420750245451927),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker5': Marker(
            markerId: MarkerId('5'),
            position: LatLng(31.245866479688715, 31.45661775022745),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker6': Marker(
            markerId: MarkerId('6'),
            position: LatLng(31.171290401756735, 31.44194070249796),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker7': Marker(
            markerId: MarkerId('7'),
            position: LatLng(30.986482997471555, 31.309506967663765),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker8': Marker(
            markerId: MarkerId('8'),
            position: LatLng(30.92178623204716, 31.3223547488451),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
  };
  final Map<String, Marker> _markersZ = {
        'marker1': Marker(
            markerId: MarkerId('1'),
            position: LatLng(31.073714, 31.429422),
            infoWindow: InfoWindow(title: 'Zeko', snippet: 'welcome to zeko Garage'),
        ),
        'marker2': Marker(
            markerId: MarkerId('2'),
            position: LatLng(31.189610455894986, 31.35727509856224),
            infoWindow: InfoWindow(title: 'Migo', snippet: 'welcome to mego Garage'),
        ),
        'marker3': Marker(
            markerId: MarkerId('3'),
            position: LatLng(31.074558078556098, 31.368146762251854),
            infoWindow: InfoWindow(title: 'Elbastawesy', snippet: 'Abdallah Talawos'),
        ),
        'marker4': Marker(
            markerId: MarkerId('4'),
            position: LatLng(31.074707403086364, 31.420750245451927),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker5': Marker(
            markerId: MarkerId('5'),
            position: LatLng(31.245866479688715, 31.45661775022745),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker6': Marker(
            markerId: MarkerId('6'),
            position: LatLng(31.16142413462581, 31.4175621047616),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker7': Marker(
            markerId: MarkerId('5'),
            position: LatLng(30.91387281559397, 31.472248658537865),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
        'marker8': Marker(
            markerId: MarkerId('8'),
            position: LatLng(31.00737991910781, 31.472907811403275),
            infoWindow: InfoWindow(title: 'Abo ElNagaa', snippet: 'The Cute Lover'),
        ),
  };
  final Map<String, Marker> _markersempty = {};
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          GoogleMap(
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            compassEnabled: false,
            buildingsEnabled: true,
            mapToolbarEnabled: true,
            tiltGesturesEnabled: true,
            trafficEnabled: true,
            rotateGesturesEnabled: true,
            indoorViewEnabled: true,
            scrollGesturesEnabled: true,
            zoomGesturesEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers:  x == 1 ? _markersX.values.toSet()   :
            y == 1 ? _markersY.values.toSet()  :
            z == 1 ? _markersZ.values.toSet() :
            _markersempty.values.toSet() ,
            onTap: (newLatLong) {
                print(newLatLong.latitude);
                print(newLatLong.longitude);
            },
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * .05,
            top: MediaQuery.of(context).size.height * .07,
            child: InkWell(
              onTap: () {
                _scaffoldKey.currentState.openDrawer();
                myCurrentLocation();
              },
              child: CircleButton(icn: Icons.format_align_left,)
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * .05,
            top: MediaQuery.of(context).size.height * .07,
            child: InkWell(
              onTap:(){ print('worgfb');
              myCurrentLocation();
              },
              child: CircleButton(icn: Icons.my_location,),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .03,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 2,),
                x == 0 ?
                InkWell(onTap: (){setState(() {x = 1 ;y =0;z = 0; marker = 1 ;});},
                    child: Service(imgPath:'img/yellow_car.png',txt: 'Mechanic',clor: Colors.blueGrey[200],)) :
                InkWell(onTap: (){setState(() {x = 0 ;});},
                    child: Service(imgPath:'img/black_car.png',txt: 'Mechanic',clor: Colors.black,)) ,
                y == 0 ?
                InkWell(onTap: (){setState(() {x = 0 ;y = 1 ;z = 0;});},
                    child: Service(imgPath:'img/gase_station.png',txt: 'Gas Station',clor: Colors.blueGrey[200],)) :
                InkWell(onTap: (){setState(() {y = 0 ;});},
                    child: Service(imgPath:'img/gasestation_black.png',txt: 'Gas Station',clor: Colors.black)) ,
                z == 0 ?
                InkWell(onTap: (){setState(() {x = 0 ;y = 0;z = 1;});},
                    child: Service(imgPath:'img/winch.png',txt: 'Winch',clor: Colors.blueGrey[200],)):
                InkWell(onTap: (){setState(() {z = 0;});},
                    child: Service(imgPath:'img/black_winch.png',txt: 'Winch',clor: Colors.black,)),
              ],
            ),
          ),
//          marker == 1 ? Tst() : SizedBox ,
        ],
      ),
      drawer: Drawer(child: DrawerContent(),),
    );
  }
}

