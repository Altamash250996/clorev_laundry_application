import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _switchValueNotification=true;
  bool _switchValueWhatsApp=true;
  bool _switchValueFingerPrint=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Notifications',
                    ),
                  ),
                  new Spacer(),
                  // toggle button
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoSwitch(
                      activeColor: Colors.blue,
                      value: _switchValueNotification,
                      onChanged: (value) {
                        setState(() {
                          _switchValueNotification = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Get Updates on WhatsApp',
                    ),
                  ),
                  new Spacer(),
                  // toggle button
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoSwitch(
                      activeColor: Colors.blue,
                      value: _switchValueWhatsApp,
                      onChanged: (value) {
                        setState(() {
                          _switchValueWhatsApp = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.fingerprint_rounded,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Notifications',
                    ),
                  ),
                  new Spacer(),
                  // toggle button
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoSwitch(
                      activeColor: Colors.blue,
                      value: _switchValueFingerPrint,
                      onChanged: (value) {
                        setState(() {
                          _switchValueFingerPrint = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
