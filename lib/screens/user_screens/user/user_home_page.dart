// ignore_for_file: prefer_const_constructors

import 'package:clover_application/screens/user_screens/user/choose_service_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
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
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.blue,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: backgroundAttention
                                  ? Colors.cyanAccent[400]
                                  : Colors.blue,
                              onPrimary: foregroundAttention
                                  ? Colors.white
                                  : Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              side: BorderSide(
                                color: Colors.white,
                                width: 3,
                              ),
                            ),
                            child: Text(
                              'Laundry',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            onPressed: () => setState(() {
                              foregroundAttention = !foregroundAttention;
                              backgroundAttention = !backgroundAttention;
                            }),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: backgroundAttention
                                ? Colors.cyanAccent[400]
                                : Colors.blue,
                            onPrimary: foregroundAttention
                                ? Colors.white
                                : Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            side: BorderSide(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                          child: Text(
                            'Dry-Cleaning',
                            style: TextStyle(fontSize: 16, color: Colors.white),
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
                                ? Colors.cyanAccent[400]
                                : Colors.blue,
                            onPrimary: foregroundAttention
                                ? Colors.white
                                : Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            side: BorderSide(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                          child: Text(
                            'Steam Press',
                            style: TextStyle(fontSize: 16, color: Colors.white),
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: backgroundAttention
                                  ? Colors.cyanAccent[400]
                                  : Colors.blue,
                              onPrimary: foregroundAttention
                                  ? Colors.white
                                  : Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              side: BorderSide(
                                color: Colors.white,
                                width: 3,
                              ),
                            ),
                            child: Text(
                              'Shoe & Leather Care',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            onPressed: () => setState(() {
                              foregroundAttention = !foregroundAttention;
                              backgroundAttention = !backgroundAttention;
                            }),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: backgroundAttention
                                ? Colors.cyanAccent[400]
                                : Colors.blue,
                            onPrimary: foregroundAttention
                                ? Colors.white
                                : Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            side: BorderSide(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                          child: Text(
                            'Fumigation & Sanitization',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          onPressed: () => setState(() {
                            foregroundAttention = !foregroundAttention;
                            backgroundAttention = !backgroundAttention;
                          }),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 300.0,
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.cyanAccent[400])),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChooseServiceProvider(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'BOOK NOW',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  'Exclusive Deals',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  'Subscription Plans',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  'Testimonials',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            border: Border.all(color: Colors.grey),
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 100,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
