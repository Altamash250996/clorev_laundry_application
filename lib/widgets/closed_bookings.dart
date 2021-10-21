import 'package:clover_application/models/closed_bookings.dart';
import 'package:clover_application/screens/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClosedBookingsList extends StatelessWidget {
  final List<ClosedBookings> bookings = [
    ClosedBookings(
      id: 'CRB200915101',
      serviceoffered: ['Laundry', 'Dry-Cleaning'],
      servicedates: [DateTime.now(), DateTime.now()],
      bookingdate: DateTime.now(),
      totalamount: 0000,
    ),
    ClosedBookings(
      id: 'CRB200915102',
      serviceoffered: ['Laundry', 'Dry-Cleaning'],
      servicedates: [DateTime.now(), DateTime.now()],
      bookingdate: DateTime.now(),
      totalamount: 0000,
    ),
    ClosedBookings(
      id: 'CRB200915103',
      serviceoffered: ['Laundry', 'Dry-Cleaning'],
      servicedates: [
        DateTime.now(),
        DateTime.now(),
      ],
      bookingdate: DateTime.now(),
      totalamount: 0000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            children: bookings.map((bx) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      Card(
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Booking ID: ' + bx.id,
                            ),
                            Text(
                              'dtd: ' +
                                  DateFormat.yMMMd().format(bx.bookingdate),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  bx.serviceoffered[0],
                                ),
                                Text(
                                  DateFormat.MMMd().format(bx.servicedates[0]),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  bx.serviceoffered[1],
                                ),
                                Text(
                                  DateFormat.MMMd().format(bx.servicedates[1]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'items: 00',
                            ),
                            Text(
                              'Booking Value : ' + bx.totalamount.toString(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
