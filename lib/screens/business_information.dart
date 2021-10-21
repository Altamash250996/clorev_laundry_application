// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:clover_application/screens/bank_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusinessInformation extends StatelessWidget {
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
          title: Text('Business Information'),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'CRL-009 (DEL)',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Change Password',
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.blue,
                          thickness: 1,
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Shop Name',
                                ),
                              ),
                            ),
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              size: 55,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.blue,
                          thickness: 1,
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'GSTIN',
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              size: 55,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.blue,
                          thickness: 1,
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'PAN',
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              size: 55,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.blue,
                          thickness: 1,
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'UAM No.',
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              size: 55,
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.blue,
                          thickness: 1,
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Service Offered',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.blue,
                          thickness: 1,
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('Express Delivery and '),
                                Text('Week Off'),
                              ],
                            ),
                            Row(
                              children: [
                                ExpressDeliveryDropDown(),
                                WeekOffDropDownStateDropDown(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BankDetails(),
                        ),
                      );
                    },
                    child: Text('Submit')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpressDeliveryDropDown extends StatefulWidget {
  @override
  _ExpressDeliveryDropDownState createState() =>
      _ExpressDeliveryDropDownState();
}

class _ExpressDeliveryDropDownState extends State<ExpressDeliveryDropDown> {
  String dropdownValue = 'Yes';

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
          items: <String>['Yes', 'No']
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

class WeekOffDropDownStateDropDown extends StatefulWidget {
  @override
  _WeekOffDropDownState createState() => _WeekOffDropDownState();
}

class _WeekOffDropDownState extends State<WeekOffDropDownStateDropDown> {
  String dropdownValue = 'Mon';

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
          items: <String>['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
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
