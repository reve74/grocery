import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grocery/helper/appcolors.dart';
import 'package:grocery/helper/iconFontHelper.dart';
import 'package:grocery/widgets/categoryicon.dart';
import 'package:grocery/widgets/mainappbar.dart';
import 'package:grocery/widgets/mapbottompill.dart';
import 'package:grocery/widgets/mapuserbadge.dart';

const LatLng SOURCE_LOCATION = LatLng(42.7477863, -71.1699932);
const LatLng DEST_LOCATION = LatLng(42.744421, -71.1698939);
const double CAMERA_ZOOM = 16;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 20;
const double PIN_INVISIBLE_POSITION = -220;

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  BitmapDescriptor? sourceIcon;
  BitmapDescriptor? destinationIcon;
  Set<Marker> _markers = Set<Marker>();
  double pinPillPosition = PIN_VISIBLE_POSITION;

  LatLng? currentLocation;
  LatLng? destinationLocation;
  bool userBadgeSelected = false;


  @override
  void initState() {
    super.initState();
    setInitialLocation();
    setSourceAndDestinationMarkerIcons();
  }

  void setSourceAndDestinationMarkerIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.0),
        'assets/imgs/source_pin.png');

    destinationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.0),
        'assets/imgs/destination_pin.png');
  }

  void setInitialLocation() {
    currentLocation =
        LatLng(SOURCE_LOCATION.latitude, SOURCE_LOCATION.longitude);
    destinationLocation =
        LatLng(DEST_LOCATION.latitude, DEST_LOCATION.longitude);
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition initialCameraPosition = const CameraPosition(
        zoom: CAMERA_ZOOM,
        tilt: CAMERA_TILT,
        bearing: CAMERA_BEARING,
        target: SOURCE_LOCATION);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              onTap: (LatLng loc) {
                setState(() {
                  pinPillPosition = PIN_INVISIBLE_POSITION;
                  userBadgeSelected = false;
                });
              },
              myLocationEnabled: true,
              compassEnabled: false,
              tiltGesturesEnabled: false,
              markers: _markers,
              mapType: MapType.normal,
              initialCameraPosition: initialCameraPosition,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);

                showPinsOnMap();
              },
            ),
          ),
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: MapUserBadge(isSelected: userBadgeSelected),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            left: 0,
            right: 0,
            bottom: pinPillPosition,
            child: MapBottomPill(),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: MainAppBar(
                showProfilePic: false,
              )),
        ],
      ),
    );
  }

  void showPinsOnMap() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('sourcePin'),
        position: currentLocation!,
        icon: sourceIcon!,
        onTap: () {
          setState(() {
            userBadgeSelected = true;
          });
        }
      ));

      _markers.add(Marker(
        markerId: MarkerId('destinationPin'),
        position: destinationLocation!,
        icon: destinationIcon!,
        onTap: () {
          setState(() {
            pinPillPosition = PIN_VISIBLE_POSITION;
          });
        }
      ));
    });
  }
}
