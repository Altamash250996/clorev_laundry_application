import 'package:flutter/material.dart';

class DailyWear extends StatefulWidget {
  @override
  _DailyWearState createState() => _DailyWearState();
}

class _DailyWearState extends State<DailyWear> {
  String dropdownValue = 'Daily Wear';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Mr.', 'Mrs.', 'Ms.']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'Mr.';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Mr.', 'Mrs.', 'Ms.']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropDownWeek extends StatefulWidget {
  @override
  _DropDownWeekState createState() => _DropDownWeekState();
}

class _DropDownWeekState extends State<DropDownWeek> {
  String dropdownValue = 'Mon.';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Mon.', 'Tue.', 'Wed.', 'Thur.', 'Fri.']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropDownPhone extends StatefulWidget {
  @override
  _DropDownPhoneState createState() => _DropDownPhoneState();
}

class _DropDownPhoneState extends State<DropDownPhone> {
  String dropdownValue = '+91';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['+91', '+1', '+2']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

// date of birth drop down
class DropDownDOB extends StatefulWidget {
  @override
  _DropDownDOBState createState() => _DropDownDOBState();
}

class _DropDownDOBState extends State<DropDownDOB> {
  String dropdownValue = '01';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['01', '02', '03', '04']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropDownMonth extends StatefulWidget {
  @override
  _DropDownMonthState createState() => _DropDownMonthState();
}

class _DropDownMonthState extends State<DropDownMonth> {
  String dropdownValue = 'Jan';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Jan', 'Feb', 'Mar']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropDownYear extends StatefulWidget {
  @override
  _DropDownYearState createState() => _DropDownYearState();
}

class _DropDownYearState extends State<DropDownYear> {
  String dropdownValue = '1991';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['1991', '1992', '1993']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
