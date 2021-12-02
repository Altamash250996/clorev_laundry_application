import 'package:demo_app/functions/dropdowns.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0,),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.black),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person_rounded,
                            color: Colors.blue,
                            size: 30.0,
                          ),
                        ),
                        new Divider(
                          color: Colors.blue,
                          height: 1.0,
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                // ToDo: change color on click
                                // mr. / mrs. buttons
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text("Mr."),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text("Mrs."),
                                      ),
                                    ],
                                  ),
                                ),
                                // first name
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "First Name",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            "Sudhir",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                // last name
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Last Name",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            "Mishra",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
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
                        ),
                        new Divider(
                          color: Colors.blue,
                          height: 1.0,
                          thickness: 1.0,
                        ),

                        // email id
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email ID",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          "sudhirgrm@gmail.com",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      new Spacer(),
                                      TextButton(
                                        onPressed: () {
                                          // Todo: link to verification mail
                                        },
                                        child: Text(
                                          "verify now",
                                          style: TextStyle(
                                            color: Colors.blue,
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
                        new Divider(
                          color: Colors.blue,
                          height: 1.0,
                          thickness: 1.0,
                        ),
                        // mobile number
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8.0, right: 8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mobile Number",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      DropDownPhone(),
                                      Text(
                                        "9929371023",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      new Spacer(),
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "verified",
                                              style: TextStyle(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            //Todo: verification tick mark
                                            Icon(
                                              Icons.verified,
                                              color: Colors.blue,
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
                        new Divider(
                          color: Colors.blue,
                          height: 1.0,
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Alternate Mo. No.",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      DropDownPhone(),
                                      Text(
                                        "9929371023",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      new Spacer(),
                                      Container(
                                        child: TextButton(
                                          onPressed: () {
                                            // Todo: link to verification mail
                                          },
                                          child: Text(
                                            "verify now",
                                            style: TextStyle(
                                              color: Colors.blue,
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
                        new Divider(
                          color: Colors.blue,
                          height: 1.0,
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8.0, right: 8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mobile Number",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      DropDownDOB(),
                                      DropDownMonth(),
                                      DropDownYear(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        new Divider(
                          color: Colors.blue,
                          height: 1.0,
                          thickness: 1.0,
                        ),
                        // Address
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Address (prefer local address)",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: '31, 2nd floor, Sant Nagar\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                          children: const <TextSpan>[
                                            TextSpan(
                                              text: 'East of Kaislash, New Delhi - 110065\n',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'LandMark: Kailash Colony Metro Station',
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
                      ],
                    ),
                  ),
                ),
                // button
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0, left: 30.0,),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
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
                          // Todo: save details to database
                        },
                        child: Text(
                          "Save Details",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
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
