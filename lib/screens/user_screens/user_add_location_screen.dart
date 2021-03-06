// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:clover_application/blocs/application_bloc.dart';
import 'package:clover_application/screens/user_screens/user/user_home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:geocoding/geocoding.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserAddLocationScreen extends StatefulWidget {
  //const UserAddLocationScreen({ Key? key }) : super(key: key);

  @override
  _UserAddLocationScreenState createState() => _UserAddLocationScreenState();
}

class _UserAddLocationScreenState extends State<UserAddLocationScreen> {
  bool value = false;
  bool homeForegroundAttention = false;
  bool homeBackgroundAttention = false;
  bool officeForegroundAttention = false;
  bool officeBackgroundAttention = false;
  bool otherForegroundAttention = false;
  bool otherBackgroundAttention = false;

  List<Marker> myMarker = [];
  GoogleMapController _mapController;
  String _searchAddr;
  var _txt = TextEditingController();

  var uuid = new Uuid();
  String _sessionToken;
  List<dynamic> _placeList = [];

  @override
  void initState() {
    super.initState();
    _txt.addListener(() {
      _onChanged();
    });
  }

  _onChanged() {
    if (_sessionToken == null) {
      setState(() {
        _sessionToken = uuid.v4();
      });
    }
    getSuggestion(_txt.text);
  }

  void getSuggestion(String input) async {
    print('Click!!!!!!!!!!!!!!!!!!!!!!!');
    String kPLACES_API_KEY = "AIzaSyCHczd9XZNbtb-b9UAXT7CB2soK3mBPJr4";
    String type = '(regions)';
    String baseURL =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    String request =
        '$baseURL?input=$input&key=$kPLACES_API_KEY&sessiontoken=$_sessionToken';

    var response = await http.get(Uri.parse(request));

    if (response.statusCode == 200) {
      setState(() {
        _placeList = json.decode(response.body)['predictions'];
        print(_placeList);
      });
    } else {
      throw Exception('Failed to load predictions');
    }
  }

  @override
  Widget build(BuildContext context) {
    final applicationBloc = Provider.of<ApplicationBloc>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            (applicationBloc.currentLocation == null)
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    height: 500,
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
            SizedBox(
              height: 10,
            ),

            //Select the Address
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: _txt,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.map),
                      hintText: 'Enter Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
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
                        _searchAddr = val;
                      });
                    },
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _placeList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_placeList[index]["description"]),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: homeBackgroundAttention
                                ? Colors.blue
                                : Colors.white,
                            onPrimary: homeForegroundAttention
                                ? Colors.white
                                : Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            side: BorderSide(
                              color: Colors.blue,
                              width: 3,
                            ),
                          ),
                          child: Text(
                            'Home',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () => setState(() {
                            homeForegroundAttention = !homeForegroundAttention;
                            homeBackgroundAttention = !homeBackgroundAttention;
                          }),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: officeBackgroundAttention
                                ? Colors.blue
                                : Colors.white,
                            onPrimary: officeForegroundAttention
                                ? Colors.white
                                : Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            side: BorderSide(
                              color: Colors.blue,
                              width: 3,
                            ),
                          ),
                          child: Text(
                            'Office',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () => setState(() {
                            officeForegroundAttention =
                                !officeForegroundAttention;
                            officeBackgroundAttention =
                                !officeBackgroundAttention;
                          }),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 110,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: otherBackgroundAttention
                                ? Colors.blue
                                : Colors.white,
                            onPrimary: otherForegroundAttention
                                ? Colors.white
                                : Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            side: BorderSide(
                              color: Colors.blue,
                              width: 3,
                            ),
                          ),
                          child: Text(
                            'Other',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () => setState(() {
                            otherForegroundAttention =
                                !otherForegroundAttention;
                            otherBackgroundAttention =
                                !otherBackgroundAttention;
                          }),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        value: this.value,
                        onChanged: (bool value) {
                          setState(() {
                            this.value = value;
                          });
                        },
                      ),
                      Flexible(
                        child: Text(
                          'Make this as my default address',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 30.0,
                        left: 30.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserHomePage(),
                              ),
                            );
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onMapCreated(controller) {
    setState(() {
      _mapController = controller;
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
    locationFromAddress(_searchAddr).then((result) {
      _mapController
          .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
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
      _mapController
          .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(tappedPoint.latitude, tappedPoint.longitude),
        zoom: getZoomLevel(25),
      )));
      setState(() {
        _txt.text = addresses.first.addressLine;
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
