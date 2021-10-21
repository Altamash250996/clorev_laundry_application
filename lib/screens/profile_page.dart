// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:clover_application/screens/bank_details.dart';
import 'package:clover_application/screens/business_information.dart';
import 'package:clover_application/screens/edit_profile.dart';
import 'package:clover_application/screens/ledger_account_page.dart';
import 'package:clover_application/screens/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('assets/images/lion.jpg'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Sudhir Mishra\n\n\n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: 'sudhirmishra09@gmail.com\n',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        )),
                                    TextSpan(
                                      text: '+91-9929371023',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        // edit profile button
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EditProfile(),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      "Edit Profile",
                                      style: TextStyle(color: Colors.white60),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color: Colors.white60,
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
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        // ToDo: linking to respective pages
                        // wallet row
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.account_balance_wallet_rounded,
                                    color: Colors.blue,
                                    size: 20.0,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.blue,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            'Wallet',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('₹0,0000'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_right,
                                            color: Colors.blue,
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
                        // ledger account row
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.library_books_sharp,
                                    color: Colors.blue,
                                    size: 20.0,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.blue,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    LedgerAccountPage(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            'Ledger Account',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_right,
                                            color: Colors.blue,
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
                        // professional details row
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.shopping_bag,
                                    color: Colors.blue,
                                    size: 20.0,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.blue,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BusinessInformation(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            'Professional Details',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_right,
                                            color: Colors.blue,
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
                        // bank details row
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.food_bank,
                                    color: Colors.blue,
                                    size: 20.0,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.blue,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BankDetails(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            'Bank Details',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_right,
                                            color: Colors.blue,
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
                        // refer app
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.link_outlined,
                                    color: Colors.blue,
                                    size: 20.0,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.blue,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            'Refer App',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_right,
                                            color: Colors.blue,
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
                        // rate us
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.thumb_up_alt_sharp,
                                    color: Colors.blue,
                                    size: 20.0,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.blue,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            'Rate Us',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        new Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_right,
                                            color: Colors.blue,
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
                        // setting page row
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.settings,
                                    color: Colors.blue,
                                    size: 20.0,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SettingsPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Settings',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                new Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.arrow_right,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        new Divider(
                          color: Colors.blue,
                          thickness: 1.0,
                          height: 1.0,
                        ),
                        // icons link rows
                        // ToDo: link to social media accounts
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.blue)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/linkdin.jpg'),
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.blue)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/youtube.jpg'),
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.blue)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/facebook.jpg'),
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.blue)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/instagram.jpg'),
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.blue)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/twitter.jpg'),
                                      height: 30.0,
                                      width: 30.0,
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
                // logout button row
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 30.0,
                      left: 30.0,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Logout",
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
