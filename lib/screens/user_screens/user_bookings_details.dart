// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class UserBookingsDetail extends StatelessWidget {
  //const UserBookingsDetail({ Key? key }) : super(key: key);

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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Booking #CRB200925051',
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 16.0,
              right: 8.0,
            ),
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
                                    borderRadius: BorderRadius.circular(5.0),
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                //color: Colors.white,
                                              ),
                                              child: Text(
                                                "Laundry",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "₹0,000/-",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      new Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                "Delivered on",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "30 Sep, 05:00 - 07:00 pm",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //
                        //
                        //Shirt details
                        //
                        //
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 8.0),
                            child: Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 8.0),
                                    child: Column(
                                      children: [
                                        Text("Shirt {Men}"),
                                        Text('₹0,000/ price'),
                                      ],
                                    ),
                                  ),
                                  new Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 8.0),
                                    child: Row(
                                      children: [
                                        Text('2'),
                                        SizedBox(width: 10),
                                        SizedBox(
                                          height: 50,
                                          width: 55,
                                          child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.image,
                                              color: Colors.black,
                                              size: 30,
                                            ),
                                            label: Text(''),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        //Dry-Cleaning details
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                //color: Colors.white,
                                              ),
                                              child: Text(
                                                "Dry-Cleaning",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "₹0,000/-",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      new Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                "Delivered on",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "30 Sep, 05:00 - 07:00 pm",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //
                        //
                        //Jeans details
                        //
                        //
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 8.0),
                            child: Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 8.0),
                                    child: Column(
                                      children: [
                                        Text("Jeans {Women}"),
                                        Text('₹0,000/ price'),
                                      ],
                                    ),
                                  ),
                                  new Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0.0, horizontal: 8.0),
                                    child: Row(
                                      children: [
                                        Text('2'),
                                        SizedBox(width: 10),
                                        SizedBox(
                                          height: 50,
                                          width: 55,
                                          child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.image,
                                              color: Colors.black,
                                              size: 30,
                                            ),
                                            label: Text(''),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'CRL-017(DEL)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '03',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'items',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                        label: Text(
                                          '3.5',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      //Spacer(),
                                      Text(
                                        '(25 Ratings)',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    '₹0,000/-',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('PRICE DETAILS'),
                              ),
                            ),
                            Row(
                              children: [
                                Text('Cart Value'),
                                Spacer(),
                                Text('₹0,000/-'),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text('GST(included)'),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue,
                                      size: 15,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Text('₹000/-'),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text('Delivery Charges'),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue,
                                      size: 15,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Text('Free'),
                              ],
                            ),
                            Divider(
                              color: Colors.blue,
                              thickness: 0.5,
                            ),
                            Row(
                              children: [
                                Text('50% paid by Credit Card'),
                                Spacer(),
                                Text('₹0,000/-'),
                              ],
                            ),
                            Divider(
                              color: Colors.blue,
                              thickness: 0.5,
                            ),
                            Row(
                              children: [
                                Text('Balanced 50% paid by UPI'),
                                Spacer(),
                                Text('₹0,000/-'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //Details
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Sudhir Mishra',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '(91-9929371023)',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '(1C, 21, Sector-2,)',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '(Gole Market, New Delhi - 110 001)',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Picked-up on',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '25 Sep 11:00AM - 01:00PM',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.blue,
                              thickness: 0.5,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Download Invoice',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Need Help?',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
