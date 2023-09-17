import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MapScreen1 extends StatefulWidget {
  const MapScreen1({super.key});

  @override
  State<MapScreen1> createState() => _MapScreen1State();
}

class _MapScreen1State extends State<MapScreen1> {
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'IND');

  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Orbin',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 251, 79, 22))),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                width: 100,
                height: 2,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/needhelp');
                    },
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 66, 65, 65)),
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 228, 228, 228),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)))),
                    child: Text('Cab Tracker')),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Color(0xFF2970FE),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: const Color.fromARGB(255, 250, 248, 248),
                    )),
              ),
            )
          ],
        ),
        body: Container(
          width: 408,
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 193, 194, 197)),
              borderRadius: BorderRadius.all(Radius.circular(18))),
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Container(
              width: 328,
              height: 888,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Rider detail',
                          style: TextStyle(
                            color: Color(0xFF344053),
                            fontSize: 30,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w500,
                          )),
                      Spacer(),
                      SizedBox(
                        width: 140,
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Add Passenger',
                            style: TextStyle(
                              color: Color(0xFF344053),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xFFF2F3F6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 328,
                    height: 330,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 193, 194, 197)),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    // color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Passenger 1',
                                  style: TextStyle(
                                    color: Color(0xFF475466),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.close)
                              ],
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Text(
                              'Mobile number',
                              style: TextStyle(
                                color: Color(0xFF475466),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0.10,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InternationalPhoneNumberInput(
                              onInputChanged: (PhoneNumber number) {
                                setState(() {
                                  phoneNumber = number;
                                });
                              },
                              inputBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 7.5),
                              ),
                              selectorConfig: SelectorConfig(
                                selectorType: PhoneInputSelectorType.DIALOG,
                              ),
                              initialValue: phoneNumber,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'First name',
                              style: TextStyle(
                                color: Color(0xFF475466),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0.10,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Enter first name',
                                filled: true,
                                fillColor: Color(0xFFF2F3F6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Last name',
                              style: TextStyle(
                                color: Color(0xFF475466),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0.10,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Enter last name',
                                filled: true,
                                fillColor: Color(0xFFF2F3F6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/mapscreen2');
                    },
                    onHover: (hovering) {
                      setState(() => isHovering = hovering);
                    },
                    child: AnimatedContainer(
                      width: 400,
                      height: 55,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease,
                      padding: EdgeInsets.all(isHovering ? 15 : 10),
                      decoration: BoxDecoration(
                        color:
                            isHovering ? Color(0xFFFF5449) : Color(0xFFF2F3F6),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 18,
                            color: isHovering
                                ? Color.fromARGB(255, 255, 255, 255)
                                : Color(0xFF344053),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
