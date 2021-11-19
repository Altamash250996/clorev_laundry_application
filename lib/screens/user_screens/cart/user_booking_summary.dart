// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, unnecessary_new, prefer_final_fields, override_on_non_overriding_member

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class UserBookingSummary extends StatefulWidget {
  //const UserBookingSummary({ Key? key }) : super(key: key);

  @override
  _UserBookingSummaryState createState() => _UserBookingSummaryState();
}

class _UserBookingSummaryState extends State<UserBookingSummary> {
  List<bool> isSelected = [true, false];
  int _value = 0;
  bool _switchValueLaundry = true;
  @override
  void _addItems() {
    setState(() {
      _value += 1;
      print(_value.toString());
    });
  }

  void _removeItems() {
    setState(() {
      _value -= 1;
      print(_value.toString());
    });
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      title: Icon(
        Icons.warning_rounded,
        color: Colors.blue,
        size: 80,
      ),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new RichText(
            text: new TextSpan(
              style: new TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                new TextSpan(text: 'Are you sure, you want to remove'),
                new TextSpan(
                  text: '\nItem Name ',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                new TextSpan(text: 'from cart...?'),
              ],
            ),
          ),
        ],
      ),
      actions: <Widget>[
        Center(
          child: ToggleButtons(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                child: Text(
                  'Remove',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                child: Text(
                  'Keep',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            isSelected: isSelected,
            fillColor: Colors.blue,
            color: Colors.black,
            selectedColor: Colors.white,
            borderColor: Colors.blue,
            onPressed: (int newIndex) {
              setState(() {
                for (int index = 0; index < isSelected.length; index++) {
                  if (index == newIndex) {
                    isSelected[index] = true;
                  } else {
                    isSelected[index] = false;
                  }
                }
              });
            },
          ),
        ),
      ],
    );
  }

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
                          onPressed: () {},
                          child: Text(
                            "Booking Summary",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 35.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Laundry\n₹0,000/-',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Text(
                                          "Regular\nDelivery",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 0.0,
                                            horizontal: 8.0,
                                          ),
                                          child: CupertinoSwitch(
                                            trackColor: Colors.lightBlueAccent,
                                            activeColor: Colors.black,
                                            value: _switchValueLaundry,
                                            onChanged: (value) {
                                              setState(() {
                                                _switchValueLaundry = value;
                                              });
                                            },
                                          ),
                                        ),
                                        Text(
                                          "Express\nDelivery",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0.0, horizontal: 8.0),
                                            child: Column(
                                              children: [
                                                Text("Shirt {Men}"),
                                                Text(
                                                  '₹0,000/- price',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.black,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.remove,
                                                size: 12,
                                              ),
                                              onPressed: () {
                                                _removeItems();
                                              },
                                              tooltip: 'Remove',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 0.0,
                                              horizontal: 4.0,
                                            ),
                                            child: Text(_value.toString()),
                                          ),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.black,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.add,
                                                size: 12,
                                              ),
                                              onPressed: () {
                                                _addItems();
                                              },
                                              tooltip: 'Remove',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        color: Colors.blue,
                                        thickness: 1,
                                        indent: 3,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0.0, horizontal: 8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Softener {Add-On}"),
                                                Text(
                                                  '₹0,000/- price',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.black,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.remove,
                                                size: 12,
                                              ),
                                              onPressed: () {
                                                _removeItems();
                                              },
                                              tooltip: 'Remove',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 0.0,
                                              horizontal: 4.0,
                                            ),
                                            child: Text(_value.toString()),
                                          ),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.black,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.add,
                                                size: 12,
                                              ),
                                              onPressed: () {
                                                _addItems();
                                              },
                                              tooltip: 'Remove',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Dry-Cleaning\n₹0,000/-',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Text(
                                          "Regular\nDelivery",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 0.0,
                                            horizontal: 8.0,
                                          ),
                                          child: CupertinoSwitch(
                                            trackColor: Colors.lightBlueAccent,
                                            activeColor: Colors.black,
                                            value: _switchValueLaundry,
                                            onChanged: (value) {
                                              setState(() {
                                                _switchValueLaundry = value;
                                              });
                                            },
                                          ),
                                        ),
                                        Text(
                                          "Express\nDelivery",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0.0, horizontal: 8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Suit(3 pices) {Men}"),
                                                Text(
                                                  '₹0,000/- price',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.black,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.remove,
                                                size: 12,
                                              ),
                                              onPressed: () {
                                                _removeItems();
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) =>
                                                          _buildPopupDialog(
                                                              context),
                                                );
                                              },
                                              tooltip: 'Remove',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 0.0,
                                              horizontal: 4.0,
                                            ),
                                            child: Text(_value.toString()),
                                          ),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.black,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.add,
                                                size: 12,
                                              ),
                                              onPressed: () {
                                                _addItems();
                                              },
                                              tooltip: 'Remove',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Dry-Cleaning',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text('(Extra Packaging Items)'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '₹0,000/- price',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0.0, horizontal: 8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Suit(3 pices) {Men}"),
                                                Text(
                                                  '₹0,000/- price',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.black,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.remove,
                                                size: 12,
                                              ),
                                              onPressed: () {
                                                _removeItems();
                                              },
                                              tooltip: 'Remove',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 0.0,
                                              horizontal: 4.0,
                                            ),
                                            child: Text(_value.toString()),
                                          ),
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.black,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.add,
                                                size: 12,
                                              ),
                                              onPressed: () {
                                                _addItems();
                                              },
                                              tooltip: 'Remove',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '08',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '(Items)',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalDivider(
                                  color: Colors.white,
                                  thickness: 1,
                                  indent: 20,
                                  endIndent: 0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'CRL-107 (DEL)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    //Problem in row
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        Text(
                                          '3.5',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          '(25 Ratings)',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          '₹0,000/-',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
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
                                  //
                                  //
                                  //
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
