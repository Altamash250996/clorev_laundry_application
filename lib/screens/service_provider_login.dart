// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_this, missing_required_param, unused_field, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:io';
import 'dart:ui';

import 'package:clover_application/screens/service_provider_bookings.dart';
import 'package:clover_application/widgets/camera_access.dart';
import 'package:clover_application/widgets/geo_location/geo_location_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'bottom_navigation_bar.dart';

class ServiceProviderLogin extends StatefulWidget {
  @override
  State<ServiceProviderLogin> createState() => _ServiceProviderLoginState();
}

class _ServiceProviderLoginState extends State<ServiceProviderLogin> {
  bool value = false;
  bool _secureText = true;
  bool foregroundAttention = false;
  bool backgroundAttention = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/clover.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Service Provider Login Page'),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 10,
                ),

                // Service Provider Login
                //
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.0),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Partner ID*',
                            hintText: 'Enter Partner ID*',
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      DropDown(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
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
                        'I  have  read and do hereby agree to the Terms of Use and Privacy Policy of CLORVE Laundry.',
                        style: TextStyle(
                          fontSize: 18,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Password*',
                            hintText: '*************',
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(_secureText
                                  ? Icons.remove_red_eye
                                  : Icons.security),
                              onPressed: () {
                                setState(() {
                                  _secureText = !_secureText;
                                });
                              },
                            ),
                          ),
                          obscureText: _secureText,
                        ),
                      ),
                    ],
                  ),
                ),
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
                    Text(
                      'Remember Me',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      'Forgot Passcode?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 55,
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.login),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyBottomNavBar(),
                            ),
                          );
                        },
                        label: Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '----------or Register here----------',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                //
                //

                SizedBox(
                  height: 10,
                ),

                //
                //Personal Information

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      RichText(
                        text: TextSpan(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.person,
                                size: 34,
                              ),
                            ),
                            TextSpan(
                              text: 'Personal Information',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your Name*',
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            labelText: 'Enter your Name*',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          //keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Mobile Number*',
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            labelText: 'Enter Mobile Number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your Email*',
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            labelText: 'Enter your Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          //keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Alternate Mob.Number(optional)',
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            labelText: 'Alternate Mob.Number(optional)',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                ),
                //
                //

                SizedBox(
                  height: 10,
                ),

                //
                //Business Information

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      RichText(
                        text: TextSpan(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.business,
                                size: 34,
                              ),
                            ),
                            TextSpan(
                              text: 'Business Information',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //
                      //

                      CameraGalleryAccess(),

                      //
                      //
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 140.0,
                            decoration: BoxDecoration(),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Bank Account Number*',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    keyboardType: TextInputType.phone,
                                    textInputAction: TextInputAction.done,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Text('(Upload image of yuor bank passbook)'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Branch IFSC Code*',
                                  labelStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.done,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.table_rows_sharp,
                                    size: 34,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Services Offered',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: backgroundAttention
                                  ? Colors.blue
                                  : Colors.white,
                              onPrimary: foregroundAttention
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
                              'Laundry',
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () => setState(() {
                              foregroundAttention = !foregroundAttention;
                              backgroundAttention = !backgroundAttention;
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: backgroundAttention
                                  ? Colors.blue
                                  : Colors.white,
                              onPrimary: foregroundAttention
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
                              'Dry-Cleaning',
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () => setState(() {
                              foregroundAttention = !foregroundAttention;
                              backgroundAttention = !backgroundAttention;
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: backgroundAttention
                                  ? Colors.blue
                                  : Colors.white,
                              onPrimary: foregroundAttention
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
                              'Steam Press',
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () => setState(() {
                              foregroundAttention = !foregroundAttention;
                              backgroundAttention = !backgroundAttention;
                            }),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: backgroundAttention
                                  ? Colors.blue
                                  : Colors.white,
                              onPrimary: foregroundAttention
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
                              'Shoe & Leather Care',
                              style: TextStyle(fontSize: 14),
                            ),
                            onPressed: () => setState(() {
                              foregroundAttention = !foregroundAttention;
                              backgroundAttention = !backgroundAttention;
                            }),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: backgroundAttention
                                  ? Colors.blue
                                  : Colors.white,
                              onPrimary: foregroundAttention
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
                              'Fumigation & Sanitisation',
                              style: TextStyle(fontSize: 14),
                            ),
                            onPressed: () => setState(() {
                              foregroundAttention = !foregroundAttention;
                              backgroundAttention = !backgroundAttention;
                            }),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Do you offer Express Delivery..?(Average lead time 24-36 hrs',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Yes/No'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Do you offer Express Delivery..?(Average lead time 24-36 hrs',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Yes/No'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.store,
                                    size: 34,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Store Address',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //Google Maps Code
                      //
                      //
                      GeoLocationScreen(),
                      //
                      //
                      //
                      Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Submit'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'Mr.';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['Mr.', 'Mrs.', 'Ms.']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
