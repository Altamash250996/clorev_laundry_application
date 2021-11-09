// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserRatingsReviews extends StatelessWidget {
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
            'Ratings & Reviews',
          ),
        ),
        body: Column(
          children: [
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
                            Icon(
                              Icons.local_laundry_service,
                              size: 50,
                              color: Colors.black,
                            ),
                            Column(
                              children: [
                                Text(
                                  'CRL-013 (DEL)',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('(CRB200917015)'),
                              ],
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal: 16.0,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '5',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        //SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                      'I was very much impressed by the service quality. I always expect on-time pickup & delivery and they stood by it. I couldn’t find a single reason to rate them a lower star.'))
                            ],
                          ),
                        ),
                        //SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Service Provider Reply: Dear consumer, thank you for taking time to share your feedback. We are glad that you chose our service and we look forward to serve you again soon.',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //SizedBox(height: 10),
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
                            Icon(
                              Icons.local_laundry_service,
                              size: 50,
                              color: Colors.black,
                            ),
                            Column(
                              children: [
                                Text(
                                  'CRL-013 (DEL)',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('(CRB200917015)'),
                              ],
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal: 16.0,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '4',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        //SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                      'I was very much impressed by the service quality. I always expect on-time pickup & delivery and they stood by it. I couldn’t find a single reason to rate them a lower star.'))
                            ],
                          ),
                        ),
                        //SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Service Provider Reply: Dear consumer, thank you for taking time to share your feedback. We are glad that you chose our service and we look forward to serve you again soon.',
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}
