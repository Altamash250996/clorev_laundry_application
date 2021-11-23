// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_brace_in_string_interps, use_key_in_widget_constructors, prefer_final_fields, unnecessary_string_interpolations, avoid_print, sized_box_for_whitespace

import 'package:clover_application/screens/delivery_partner_screens/delivery_page.dart';
import 'package:clover_application/screens/user_screens/cart/user_booking_summary.dart';
import 'package:clover_application/screens/user_screens/user_add_location_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'service_provider_login.dart';
import '../user_screens/user_bottom_navigation_bar.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool isRequestButtonActive = false;
  bool isLoginButtonActive = false;
  bool isRequestSend = false;

  bool value = false;
  String dialCodeDigits = '+91';
  TextEditingController _controller = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffolkey = GlobalKey<ScaffoldState>();
  final TextEditingController _pinOTPCodeController = TextEditingController();
  final FocusNode _pinOTPCodeFocus = FocusNode();
  String verificationCode;

  final BoxDecoration pinOTPCodeDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.grey,
    ),
  );

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

    _controller.addListener(() {
      final isRequestButtonActive = _controller.text.isNotEmpty;
      setState(() {
        this.isRequestButtonActive = isRequestButtonActive;
      });
    });
  }

  void verifyPhoneNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '${dialCodeDigits + _controller.text}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) {
          if (value.user != null) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (c) => UserAddLocationScreen()));
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
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.width * 0.90,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/How_CLOREV_Works.png',
                  fit: BoxFit.fill,
                ),
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
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
                                  prefixIcon: SizedBox(
                                    height: 55,
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
                                  hintText: 'Enter Mobile Number',
                                  //labelText: 'Mobile Number',
                                  prefix: Padding(
                                    padding: EdgeInsets.only(right: 4),
                                    child: Text(dialCodeDigits),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                //maxLength: 12,
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
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0.0,
                          horizontal: 12.0,
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: isRequestSend
                                  ? Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'OTP has been send to above mobile number',
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                'Edit Mob No',
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                'Get OTP on Call',
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'By requesting OTP, you agree to the',
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                'Terms of Use',
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'and',
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                'Privacy Policy',
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'of Clorev Laundry',
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0.0,
                          horizontal: 12.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  onSurface: Colors.blueAccent,
                                ),
                                onPressed: isRequestButtonActive
                                    ? () {
                                        setState(
                                          () => isRequestButtonActive = false,
                                        );
                                        verifyPhoneNumber();
                                      }
                                    : null,
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
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0.0,
                          horizontal: 12.0,
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: PinPut(
                                    fieldsCount: 4,
                                    textStyle: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                    eachFieldWidth: 40.0,
                                    focusNode: _pinOTPCodeFocus,
                                    controller: _pinOTPCodeController,
                                    submittedFieldDecoration:
                                        pinOTPCodeDecoration,
                                    selectedFieldDecoration:
                                        pinOTPCodeDecoration,
                                    followingFieldDecoration:
                                        pinOTPCodeDecoration,
                                    pinAnimationType: PinAnimationType.rotation,
                                    onSubmit: (pin) async {
                                      try {
                                        await FirebaseAuth.instance
                                            .signInWithCredential(
                                                PhoneAuthProvider.credential(
                                                    verificationId:
                                                        verificationCode,
                                                    smsCode: pin))
                                            .then((value) => {
                                                  if (value.user != null)
                                                    {
                                                      Navigator.of(context)
                                                          .push(
                                                        MaterialPageRoute(
                                                          builder: (c) =>
                                                              UserAddLocationScreen(),
                                                        ),
                                                      ),
                                                    }
                                                });
                                      } catch (e) {
                                        FocusScope.of(context).unfocus();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text('Invalid OTP'),
                                            duration: Duration(seconds: 3),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  height: 50,
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      onSurface: Colors.blueAccent,
                                    ),
                                    icon: Icon(Icons.login),
                                    onPressed: isLoginButtonActive
                                        ? () {
                                            setState(
                                              () => isLoginButtonActive = false,
                                            );
                                          }
                                        : null,
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
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ServiceProviderLogin(),
                                  ),
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
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: TextButton.icon(
                              onPressed: () {
                                print('Click me');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DeliveryPage(),
                                  ),
                                );
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
