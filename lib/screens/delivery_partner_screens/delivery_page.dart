import 'package:clover_application/functions/checkbox.dart';
import 'package:clover_application/functions/dropdowns.dart';
import 'package:clover_application/functions/rememberme.dart';
import 'package:clover_application/screens/user_screens/user_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({Key key}) : super(key: key);

  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/clover.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Welcome to Delivery Partner Login Page"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Partner ID text box
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width - 50.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'CRP-'
                        ),
                        const VerticalDivider(
                          width: 5.0,
                          thickness: 5.0,
                          color: Colors.black,
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey),
                                hintText: "Enter Partner ID",
                                fillColor: Colors.white70),
                          ),
                        ),
                        const VerticalDivider(
                          width: 2.0,
                          thickness: 2.0,
                          color: Colors.grey,
                        ),
                        DropDown(),
                      ],
                    ),
                  )
                ),
              ),

              //Check box and TOS
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Check_box(),
              ),

              // PIN with separate input and show/hide button
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: TextField(
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: '******',
                    labelStyle:
                        const TextStyle(color: Colors.grey, letterSpacing: 4.0),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.visibility_off,
                        color: _showPassword
                            ? Colors.blue
                            : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                  ),
                ),
              ),

              // Remember me and forgot password
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    RememberMe(),
                    const Spacer(),
                    const Text(
                      "Forgot Passcode?",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: 160,
                    height: 55,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.login),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserBottomNavBar(),
                          ),
                        );
                      },
                      label: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // register here
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 25.0),
                      child: const Divider(
                        thickness: 3.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Or Register here",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 25.0),
                      child: Divider(
                        thickness: 3.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),

              // Personal Information Form
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "  Personal Information",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    DropDown(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Enter Your Name ",
                            fillColor: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    DropDown(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Enter Your Number ",
                            fillColor: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10.0)),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Enter Your Email ID (optional) ",
                      fillColor: Colors.white70),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Alternate Mobile Number (optional) ",
                      fillColor: Colors.white70),
                ),
              ),

              // Professional Details
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.work,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "  Professional Details",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new Spacer(),
                    Text(
                      "Upload \n Docs",
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              border: InputBorder.none,
                              hintStyle:
                                  TextStyle(color: Colors.grey[800]),
                              hintText: "Enter Aadhaar No. ",
                              fillColor: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.upload_file,
                      color: Colors.black,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              border: InputBorder.none,
                              hintStyle:
                                  TextStyle(color: Colors.grey[800]),
                              hintText: "Driving License No. ",
                              fillColor: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.upload_file,
                      color: Colors.black,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              border: InputBorder.none,
                              hintStyle:
                                  TextStyle(color: Colors.grey[800]),
                              hintText: "Enter PAN No. ",
                              fillColor: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.upload_file,
                      color: Colors.black,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              border: InputBorder.none,
                              hintStyle:
                                  TextStyle(color: Colors.grey[800]),
                              hintText: "PF Account No. (optional) ",
                              fillColor: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.upload_file,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.food_bank,
                      color: Colors.black,
                    ),
                    Text(
                      "  Bank Details",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              border: InputBorder.none,
                              hintStyle:
                                  TextStyle(color: Colors.grey[800]),
                              hintText: "Enter Account Holder Name ",
                              fillColor: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.upload_file,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              border: InputBorder.none,
                              hintStyle:
                                  TextStyle(color: Colors.grey[800]),
                              hintText: "Enter Account Holder Name ",
                              fillColor: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                        "(Upload image \n   of your bank \n   passbook)"),
                  ],
                ),
              ),

              SizedBox(
                height: 8.0,
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                width: MediaQuery.of(context).size.width - 50.0,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Enter Account Holder Name ",
                      fillColor: Colors.white70),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                width: MediaQuery.of(context).size.width - 50.0,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Branch IFSC code",
                      fillColor: Colors.white70),
                ),
              ),

              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.table_rows_sharp,
                      color: Colors.black,
                    ),
                    Text(
                      " Preferred Service Time",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: Row(
                  children: [
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blueAccent,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Weekdays (Mon-Thu)",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    new Spacer(),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Weekends (Fri-Sun)",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: Row(
                  children: [
                    Text(
                      "When you wish to take weekly off?",
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                    new Spacer(),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: DropDown(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
