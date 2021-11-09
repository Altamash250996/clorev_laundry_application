// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, missing_required_param

import 'package:clover_application/screens/user_screens/user_bookings_details.dart';
import 'package:flutter/material.dart';

class UserClosedBookingsList extends StatelessWidget {
  //const UserClosedBookingsList({ Key? key }) : super(key: key);

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
      child: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          width: double.infinity,
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
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
                          RichText(
                            text: TextSpan(
                              text: 'Booking ID: ',
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'CRB20092113',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          new Spacer(),
                          Text(
                            "21 Sept. 2021",
                            style: TextStyle(color: Colors.white),
                          ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Laundry - 2 items'),
                                Flexible(
                                  child: Text(
                                    'CRL-017(DEL)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Dry-Cleaning - 2 items'),
                                Flexible(
                                  child: Text(
                                    'has laundered your item',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [Text('Delivered on Sep 30')],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  child: Text(
                                    'Show Details',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('RATE SERVICE'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
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
                          RichText(
                            text: TextSpan(
                              text: 'Booking ID: ',
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'CRB20092113',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          new Spacer(),
                          Text(
                            "21 Sept. 2021",
                            style: TextStyle(color: Colors.white),
                          ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Laundry - 2 items'),
                                Flexible(
                                  child: Text(
                                    'CRL-017(DEL)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Dry-Cleaning - 2 items'),
                                Flexible(
                                  child: Text(
                                    'has laundered your item',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [Text('Delivered on Sep 30')],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  child: Text(
                                    'Show Details',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            UserBookingsDetail(),
                                      ),
                                    );
                                  },
                                ),
                                OutlineButton.icon(
                                  borderSide: BorderSide(color: Colors.blue),
                                  onPressed: () {},
                                  label: Text(
                                    'You Rated ',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            )
                          ],
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
    );
  }
}
