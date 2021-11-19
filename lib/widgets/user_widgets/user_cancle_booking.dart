// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

enum SingingCharacter {
  address_change,
  reschedule,
  add_items,
  better_deal,
  personal
}

class UserCancleBooking extends StatefulWidget {
  @override
  State<UserCancleBooking> createState() => _UserCancleBookingState();
}

class _UserCancleBookingState extends State<UserCancleBooking> {
  SingingCharacter _character = SingingCharacter.address_change;

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
            'User Cart Screen',
          ),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Colors.blueAccent),
                      ),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.blue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Booking ID: CRB200092313',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  new Spacer(),
                                  Text(
                                    'did 21 Sep 2020',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Laundry - 5 items',
                                      ),
                                      Spacer(),
                                      Text('CRL-017 (DEL)'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Dry-Cleaning - 2 items',
                                      ),
                                      Spacer(),
                                      Text('Rs. 0,000/-'),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Please take a moment and tell us why are you '
                              '\n cancelling this booking. It will help us to serve'
                              '\n                  you in a more better way.',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Divider(
                            color: Colors.blue,
                            height: 1.0,
                            thickness: 1.0,
                          ),
                          Column(
                            children: <Widget>[
                              ListTile(
                                title: const Text(
                                    'Want to change address for pick-up'),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.address_change,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                              Divider(
                                color: Colors.blue,
                                height: 1.0,
                                thickness: 1.0,
                              ),
                              ListTile(
                                title: const Text(
                                    'Need to reschedule the pick-up'),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.reschedule,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                              Divider(
                                color: Colors.blue,
                                height: 1.0,
                                thickness: 1.0,
                              ),
                              ListTile(
                                title: const Text(
                                    'Wanna add few more items to it'),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.add_items,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                              Divider(
                                color: Colors.blue,
                                height: 1.0,
                                thickness: 1.0,
                              ),
                              ListTile(
                                title: const Text('Got better deal elsewhere'),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.better_deal,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                              Divider(
                                color: Colors.blue,
                                height: 1.0,
                                thickness: 1.0,
                              ),
                              ListTile(
                                title: const Text('Some personal reason'),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.personal,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                              Divider(
                                color: Colors.blue,
                                height: 1.0,
                                thickness: 1.0,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'Note: Our pick-up guy will come to you after a call-confirmation'
                                ' only, till'
                                'then you may cancel free of cost. '
                                'Once the delivery guy leaves for the pick-up, a mere '
                                'cancellation charge of RS.50/- will be levied on it.'
                                '\n \n'
                                'Refund for the balance amount will be credited '
                                'immediately to your wallet.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Request Cancellation',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
