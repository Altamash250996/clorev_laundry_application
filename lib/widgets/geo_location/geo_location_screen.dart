// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, unused_element, unused_field, unused_local_variable, sized_box_for_whitespace, avoid_print, avoid_unnecessary_containers, prefer_collection_literals

import 'dart:math';

import 'package:clover_application/blocs/application_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:geocoding/geocoding.dart';

class GeoLocationScreen extends StatefulWidget {
  @override
  State<GeoLocationScreen> createState() => _GeoLocationScreenState();
}

class _GeoLocationScreenState extends State<GeoLocationScreen> {
  List<Marker> myMarker = [];
  GoogleMapController mapController;
  String searchAddr;
  var txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final applicationBloc = Provider.of<ApplicationBloc>(context);

    return Column(
      children: [
        (applicationBloc.currentLocation == null)
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 300,
                      child: GoogleMap(
                        onMapCreated: onMapCreated,
                        mapType: MapType.normal,
                        myLocationEnabled: true,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(
                            applicationBloc.currentLocation.latitude,
                            applicationBloc.currentLocation.longitude,
                          ),
                          zoom: getZoomLevel(25),
                        ),
                        scrollGesturesEnabled: true,
                        zoomGesturesEnabled: true,
                        gestureRecognizers:
                            <Factory<OneSequenceGestureRecognizer>>[
                          new Factory<OneSequenceGestureRecognizer>(
                            () => new EagerGestureRecognizer(),
                          ),
                        ].toSet(),
                        markers: Set.from(myMarker),
                        onTap: _handleTap,
                      ),
                    ),
                    Positioned(
                      top: 10.0,
                      right: 55.0,
                      left: 0.0,
                      child: Container(
                        height: 50.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: txt,
                          decoration: InputDecoration(
                            hintText: 'Enter Address',
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 15.0, top: 15.0),
                            suffixIcon: IconButton(
                              onPressed: searchNavigate,
                              icon: Icon(
                                Icons.search,
                              ),
                              iconSize: 30.0,
                            ),
                          ),
                          onChanged: (val) {
                            setState(() {
                              searchAddr = val;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
      ],
    );
  }

  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }

  double getZoomLevel(double radius) {
    double zoomLevel = 11;
    if (radius > 0) {
      double radiusElevated = radius + radius / 2;
      double scale = radiusElevated / 500;
      zoomLevel = 16 - log(scale) / log(2);
    }
    zoomLevel = num.parse(zoomLevel.toStringAsFixed(2));
    return zoomLevel;
  }

  searchNavigate() {
    locationFromAddress(searchAddr).then((result) {
      mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(result[0].latitude, result[0].longitude),
        zoom: getZoomLevel(25),
      )));
    });
  }

  _handleTap(LatLng tappedPoint) {
    print("On Tap: ${tappedPoint}");
    getUserLocation(LatLng tappedPoint) async {
      final coordinates =
          new Coordinates(tappedPoint.latitude, tappedPoint.longitude);
      var addresses =
          await Geocoder.local.findAddressesFromCoordinates(coordinates);
      print("Address: ${addresses.first.addressLine}");
      setState(() {
        txt.text = addresses.first.addressLine;
      });
    }

    setState(() {
      getUserLocation(tappedPoint);
      myMarker = [];
      myMarker.add(
        Marker(
          markerId: MarkerId(tappedPoint.toString()),
          position: tappedPoint,
          draggable: true,
          onDragEnd: (dragEndPosition) async {
            print("On Drag: ${dragEndPosition}");
            getUserLocation(dragEndPosition);
          },
        ),
      );
    });
  }
}
