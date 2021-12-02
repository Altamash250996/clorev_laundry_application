import 'package:clover_application/screens/delivery_partner_screens/navbarpages/profilepage.dart';
import 'package:flutter/material.dart';

class ActiveBookingsPage extends StatefulWidget {

  @override
  _ActiveBookingsPageState createState() => _ActiveBookingsPageState();
}

class _ActiveBookingsPageState extends State<ActiveBookingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: IntrinsicHeight(
            // main column
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
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
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              new Spacer(),
                              Text(
                                "21 Sept. 2020",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius:
                                      BorderRadius.circular(5.0),
                                      border: Border.all(
                                          color: Colors.blueAccent),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Laundry",
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Regular Delivery",
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        // ToDo: This is hard coded text. To be converted into table
                        Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.blue,
                                          width: 2.0,
                                        ),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Shirt {Men}"),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("1"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.blue,
                                              width: 2.0)),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Jeans {Women}"),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("2"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius:
                                      BorderRadius.circular(5.0),
                                      border: Border.all(
                                          color: Colors.blueAccent),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Dry-Cleaning",
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Express Delivery",
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.blue,
                                              width: 2.0)),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Suit (3-Piece) {men}"),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("1"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "PickUp Slot",
                                style: TextStyle(color: Colors.white),
                              ),
                              new Spacer(),
                              Text(
                                "Today, 11:00AM - 01:00PM",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.person_rounded,
                              color: Colors.black,
                            ),
                          ),

                          // ToDo: Name and data are hard coded
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text: 'Mr. Sudhir Mishra \n \n \n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                      '1c, 21, Sec-2, Gole market, Peshwa \n'
                                          'Road, New Delhi, 110001\n'
                                          'Landmark: Peshwa Road',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                      // Direction Button and call button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Colors.blue),
                              ),
                              onPressed: () {
                                // ToDo: link to maps
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.directions,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Get Direction",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Colors.blue),
                              ),
                              onPressed: () {
                                // ToDo: link to call
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Call",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.double_arrow_rounded,
                            color: Colors.blue,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Tell this OTP ',
                              style: TextStyle(color: Colors.black),
                              children: const <TextSpan>[
                                TextSpan(
                                  //ToDo: OTP for auth.
                                    text: '[xxxx]',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.blue)),
                                TextSpan(
                                  text: ' to Consumer, \n'
                                      ' to authenticate yourself',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.all_inbox_outlined,
                              color: Colors.black,
                            ),
                          ),
                          // ToDo: Name and data are hard coded
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text: 'CRW-017 (DEL) \n \n \n',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                      '1c, 21, Sec-2, Gole market, Peshwa \n'
                                          'Road, New Delhi, 110001\n'
                                          'Landmark: Peshwa Road',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                      // Direction Button and call button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Colors.blue),
                              ),
                              onPressed: () {
                                // ToDo: link to maps
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.directions,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Get Direction",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Colors.blue),
                              ),
                              onPressed: () {
                                // ToDo: link to call
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Call",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.double_arrow_rounded,
                            color: Colors.blue,
                          ),
                          Text("Ask OTP of service provider to ensure the \n"
                              "handover of laundry items in safe hands.")
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width:
                                  MediaQuery.of(context).size.width / 3,
                                  height: 45.0,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        hintStyle: TextStyle(
                                            color: Colors.grey[800]),
                                        hintText: "Enter OTP ",
                                        fillColor: Colors.white70),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 45.0,
                                width: MediaQuery.of(context).size.width / 3,
                                child: TextButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProfilePage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Verify",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
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
      ),
    );
  }
}
