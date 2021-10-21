// ignore_for_file: non_constant_identifier_names, unused_field, await_only_futures, unused_local_variable, use_key_in_widget_constructors, prefer_const_constructors
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraGalleryAccess extends StatefulWidget {
  @override
  _CameraGalleryAccessState createState() => _CameraGalleryAccessState();
}

class _CameraGalleryAccessState extends State<CameraGalleryAccess> {
  File _imageCamera, _imageGallery;

  final imagePicker = ImagePicker();

  Future getCameraImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imageCamera = File(image.path);
    });
  }

  Future getGalleryImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageGallery = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //starts from here
          Container(
            width: MediaQuery.of(context).size.width - 33.0,
            decoration: BoxDecoration(),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter YOUR Shop Name*',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: TextButton.icon(
                        onPressed: getCameraImage,
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: TextButton.icon(
                        onPressed: getGalleryImage,
                        icon: Icon(
                          Icons.upload_file,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
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
            width: MediaQuery.of(context).size.width - 33.0,
            decoration: BoxDecoration(),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter GISTN*',
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
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: TextButton.icon(
                        onPressed: getCameraImage,
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: TextButton.icon(
                        onPressed: getGalleryImage,
                        icon: Icon(
                          Icons.upload_file,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
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
            width: MediaQuery.of(context).size.width - 33.0,
            decoration: BoxDecoration(),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter PAN*',
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
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: TextButton.icon(
                        onPressed: getCameraImage,
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: TextButton.icon(
                        onPressed: getGalleryImage,
                        icon: Icon(
                          Icons.upload_file,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
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
            width: MediaQuery.of(context).size.width - 33.0,
            decoration: BoxDecoration(),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'MSME Reg. No(optional)',
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
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: TextButton.icon(
                        onPressed: getCameraImage,
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: TextButton.icon(
                        onPressed: getGalleryImage,
                        icon: Icon(
                          Icons.upload_file,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.food_bank_rounded,
                        size: 34,
                      ),
                    ),
                    TextSpan(
                      text: 'Bank Details',
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
          Container(
            width: MediaQuery.of(context).size.width - 33.0,
            decoration: BoxDecoration(),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Account Holder Name*',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    //keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.upload_file,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(''),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
