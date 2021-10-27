// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:clover_application/screens/bottom_navigation_bar.dart';
import 'package:clover_application/screens/user_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pin_put/pin_put.dart';

import 'service_provider_login.dart';

class HomePageScreen extends StatefulWidget {
  //const HomePageScreen({ Key? key }) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool value = false;
  String dialCodeDigits = '+91';
  TextEditingController _controller = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffolkey = GlobalKey<ScaffoldState>();
  final TextEditingController _pinOTPCodeController = TextEditingController();
  final FocusNode _pinOTPCodeFocus = FocusNode();
  String verificationCode;

  final BoxDecoration pinOTPCodeDecoration = BoxDecoration(
    color: Colors.blueAccent,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.grey,
    ),
  );

  void verifyPhoneNumber() async {
    print('Click !!!');
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '${dialCodeDigits + _controller.text}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) {
          if (value.user != null) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (c) => ServiceProviderLogin()));
          }
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.message.toString()),
            duration: Duration(seconds: 3),
          ),
        );
      },
      codeSent: (String vID, int resendToken) {
        setState(() {
          verificationCode = vID;
        });
      },
      codeAutoRetrievalTimeout: (String vID) {
        setState(() {
          verificationCode = vID;
        });
      },
      timeout: Duration(seconds: 60),
    );
  }

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
        key: _scaffolkey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 75,
              ),
              FlutterLogo(
                size: 200,
              ),
              SizedBox(
                height: 75,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 60,
                            width: 120,
                            child: CountryCodePicker(
                              onChanged: (country) {
                                setState(() {
                                  dialCodeDigits = country.dialCode;
                                });
                              },
                              initialSelection: 'IN',
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: false,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin:
                                  EdgeInsets.only(top: 10, right: 10, left: 10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Phone Number',
                                  prefix: Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text(dialCodeDigits),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                maxLength: 12,
                                keyboardType: TextInputType.number,
                                controller: _controller,
                                onChanged: (_) {
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: this.value,
                            onChanged: (bool value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                          ),
                          Flexible(
                            child: Text(
                              'I  have  read and do hereby agree to the Terms of Use and Privacy Policy of CLORVE Laundry.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                print('Click me');
                                verifyPhoneNumber();
                              },
                              child: Text(
                                'Request OTP',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Center(
                          child: GestureDetector(
                            /* onTap: () {
                              verifyPhoneNumber();
                            }, */
                            child: Text(
                              'Verifying : ${dialCodeDigits}-${_controller.text}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: PinPut(
                          fieldsCount: 6,
                          textStyle: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                          eachFieldWidth: 40.0,
                          focusNode: _pinOTPCodeFocus,
                          controller: _pinOTPCodeController,
                          submittedFieldDecoration: pinOTPCodeDecoration,
                          selectedFieldDecoration: pinOTPCodeDecoration,
                          followingFieldDecoration: pinOTPCodeDecoration,
                          pinAnimationType: PinAnimationType.rotation,
                          onSubmit: (pin) async {
                            try {
                              await FirebaseAuth.instance
                                  .signInWithCredential(
                                      PhoneAuthProvider.credential(
                                          verificationId: verificationCode,
                                          smsCode: pin))
                                  .then((value) => {
                                        if (value.user != null)
                                          {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (c) =>
                                                        ServiceProviderLogin()))
                                          }
                                      });
                            } catch (e) {
                              FocusScope.of(context).unfocus();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Invalid OTP'),
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      /* Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton.icon(
                              icon: Icon(Icons.login),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyBottomNavBar(),
                                  ),
                                );
                              },
                              label: Text(
                                'Login',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ), */
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 45,
                            child: TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ServiceProviderLogin()),
                                );
                              },
                              label: Text(
                                'Service Provider',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                primary: Colors.black,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                            child: Text(
                              '|',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            child: TextButton.icon(
                              onPressed: () {
                                print('Click me');
                              },
                              label: Text(
                                'Delivery Partner',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.blue,
                              ),
                              style: TextButton.styleFrom(
                                primary: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
