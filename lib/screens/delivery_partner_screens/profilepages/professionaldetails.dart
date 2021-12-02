import 'package:demo_app/functions/dropdowns.dart';
import 'package:flutter/material.dart';

class ProfessionalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Professional Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'CRL-009 (DEL)',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Change Passcode',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                                labelText: 'Account Holder Name',
                              ),
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.picture_as_pdf),
                              onPressed: () {
                                // Todo: upload file
                              }),
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
                                labelText: 'Driving License No.',
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.picture_as_pdf),
                              onPressed: () {
                                // Todo: upload file
                              }),
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
                                labelText: 'Pan',
                              ),
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.picture_as_pdf),
                              onPressed: () {
                                // Todo: upload file
                              }),
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
                                labelText: 'PF Account No.',
                              ),
                            ),
                          ),
                          IconButton(
                              icon: Icon(Icons.picture_as_pdf),
                              onPressed: () {
                                // Todo: upload file
                              }),
                        ],
                      ),
                      Divider(
                        color: Colors.blue,
                        thickness: 1,
                        height: 0,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Preffered Service Time',
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Weekdays (Mon-Thu) Weekend (Fri-Sun)'),
                        ],
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.blue,
                        thickness: 1,
                        height: 0,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Weekly Off',
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DropDownWeek(),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.blue,
                        thickness: 1,
                        height: 0,
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Todo: save details on submit
                },
                child: Text('SAVE DETAILS'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
