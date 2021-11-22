// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class ConfirmPickupScreen extends StatefulWidget {
  //const ConfirmPickupScreen({ Key? key }) : super(key: key);

  @override
  _ConfirmPickupScreenState createState() => _ConfirmPickupScreenState();
}

class _ConfirmPickupScreenState extends State<ConfirmPickupScreen> {
  String dropdownExpressDeliveryPickupDate = 'DD Mmm(Today)';
  String dropdownExpressDeliveryPickupTime = '00:00AM - 00:00PM';

  String dropdownExpressDeliveryDropDate = 'DD Mmm(Today)';
  String dropdownExpressDeliveryDropTime = '00:00AM - 00:00PM';
  String dropdownRegularDeliveryDropDate = 'DD Mmm(Today)';
  String dropdownRegularDeliveryDropTime = '00:00AM - 00:00PM';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/clover.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue, width: 2),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                        ),
                        Dash(
                          length: 20,
                          dashColor: Colors.blue,
                          dashThickness: 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue, width: 2),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(
                              Icons.storefront_outlined,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                        ),
                        Dash(
                          length: 20,
                          dashColor: Colors.blue,
                          dashThickness: 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue, width: 2),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(
                              Icons.date_range_outlined,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                        ),
                        Dash(
                          length: 20,
                          dashColor: Colors.blue,
                          dashThickness: 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(
                              Icons.payment_outlined,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 35.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  'Add Washing Instruction (option)',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Drop your comment here...',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    minLines:
                                        4, // any number you need (It works as the rows for the textarea)
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 55,
                                      child: Image.asset(
                                        'assets/images/google-map-location-icon-16.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'Confirm Pickup Address',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 30,
                                      child: Image.asset(
                                        'assets/images/edit-solid.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Drop your comment here...',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    minLines:
                                        3, // any number you need (It works as the rows for the textarea)
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      child: Image.asset(
                                        'assets/images/1497835.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Confirm Pickup Schedule',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Express Delivery',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 135,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: DropdownButton<String>(
                                        value:
                                            dropdownExpressDeliveryPickupDate,
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconSize: 20, //this inicrease the size
                                        elevation: 16,
                                        style: TextStyle(color: Colors.black),
                                        underline: Container(),
                                        onChanged: (String newDate) {
                                          setState(() {
                                            dropdownExpressDeliveryPickupDate =
                                                newDate;
                                          });
                                        },
                                        items: <String>[
                                          'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                    Container(
                                      width: 145,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: DropdownButton<String>(
                                        value:
                                            dropdownExpressDeliveryPickupTime,
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconSize: 20, //this inicrease the size
                                        elevation: 16,
                                        style: TextStyle(color: Colors.black),
                                        underline: Container(),
                                        onChanged: (String newTime) {
                                          setState(() {
                                            dropdownExpressDeliveryPickupTime =
                                                newTime;
                                          });
                                        },
                                        items: <String>[
                                          '00:00AM - 00:00PM',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      child: Image.asset(
                                        'assets/images/1497835.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Confirm Delivery Schedule',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Express Delivery',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 135,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: DropdownButton<String>(
                                        value: dropdownExpressDeliveryDropDate,
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconSize: 20, //this inicrease the size
                                        elevation: 16,
                                        style: TextStyle(color: Colors.black),
                                        underline: Container(),
                                        onChanged: (String newDate) {
                                          setState(() {
                                            dropdownExpressDeliveryDropDate =
                                                newDate;
                                          });
                                        },
                                        items: <String>[
                                          'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                    Container(
                                      width: 145,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: DropdownButton<String>(
                                        value:
                                            dropdownExpressDeliveryPickupTime,
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconSize: 20, //this inicrease the size
                                        elevation: 16,
                                        style: TextStyle(color: Colors.black),
                                        underline: Container(),
                                        onChanged: (String newTime) {
                                          setState(() {
                                            dropdownExpressDeliveryPickupTime =
                                                newTime;
                                          });
                                        },
                                        items: <String>[
                                          '00:00AM - 00:00PM',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Regular Delivery',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 135,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: DropdownButton<String>(
                                        value: dropdownRegularDeliveryDropDate,
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconSize: 20, //this inicrease the size
                                        elevation: 16,
                                        style: TextStyle(color: Colors.black),
                                        underline: Container(),
                                        onChanged: (String newDate) {
                                          setState(() {
                                            dropdownRegularDeliveryDropDate =
                                                newDate;
                                          });
                                        },
                                        items: <String>[
                                          'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                    Container(
                                      width: 145,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: DropdownButton<String>(
                                        value: dropdownRegularDeliveryDropTime,
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconSize: 20, //this inicrease the size
                                        elevation: 16,
                                        style: TextStyle(color: Colors.black),
                                        underline: Container(),
                                        onChanged: (String newTime) {
                                          setState(() {
                                            dropdownRegularDeliveryDropTime =
                                                newTime;
                                          });
                                        },
                                        items: <String>[
                                          '00:00AM - 00:00PM',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                          // 'DD Mmm(Today)',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ConfirmPickupScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "RAISED PICK-UP CALL",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
