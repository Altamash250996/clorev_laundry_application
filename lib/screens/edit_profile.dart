// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:clover_application/screens/business_information.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
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
          title: Text('Edit Profile'),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.perm_contact_calendar_rounded,
                                  color: Colors.blue,
                                  size: 80,
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.blue,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 80,
                                  child: Text('Mr/Ms'),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'First Name',
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration:
                                        InputDecoration(labelText: 'Last Name'),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.blue,
                              height: 0,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelStyle:
                                          TextStyle(color: Colors.grey[600]),
                                      labelText: 'Email',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.blue,
                              height: 0,
                              thickness: 2,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  DropDown(),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Mobile Number',
                                        hintText: 'Mobile Number',
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400]),
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
                            Divider(
                              color: Colors.blue,
                              height: 0,
                              thickness: 2,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  DropDown(),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Alternate Mob. No.',
                                        hintText: 'Alternate Mob. No.',
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400]),
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
                            Divider(
                              color: Colors.blue,
                              height: 0,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText:
                                          'Address(prefer address of the Shop)',
                                    ),
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 3,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.blue,
                              height: 0,
                              thickness: 2,
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
                        builder: (context) => BusinessInformation(),
                      ),
                    );
                  },
                  child: Text('Submit'),
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
  String dropdownValue = '+91';

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
          items: <String>['+91', '+92', '+81']
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
