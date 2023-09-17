import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MapScreen2 extends StatefulWidget {
  const MapScreen2({super.key});

  @override
  State<MapScreen2> createState() => _MapScreen2State();
}

class _MapScreen2State extends State<MapScreen2> {
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'IND');

  bool isHovering = false;
  bool ishover = false;
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFFF2F3F6),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          TextButton.icon(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF475466),
                                backgroundColor: const Color(0xFFF2F3F6),
                              ),
                              onPressed: () {},
                              label: Icon(Icons.arrow_drop_down),
                              icon: Text('One way')),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF475466),
                              backgroundColor: const Color(0xFFF2F3F6),
                            ),
                            onPressed: () {},
                            label: Text('Add note'),
                            icon: Icon(Icons.add),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 192,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 209, 210, 213)),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                            ),
                            child: Column(children: [
                              SizedBox(
                                height: 40,
                              ),
                              SvgPicture.asset('assets/filled.svg'),
                              SizedBox(
                                height: 3,
                              ),
                              SvgPicture.asset('assets/Line dash.svg'),
                              SizedBox(
                                height: 3,
                              ),
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: Color(0xFFFF5449),
                                child: SvgPicture.asset(
                                    'assets/tabler-icon-map-pin-filled.svg'),
                              )
                            ]),
                          ),
                          Container(
                            width: 278,
                            height: 192,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 213, 214, 217)),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pickup',
                                    style: TextStyle(
                                      color: Color(0xFF98A1B2),
                                      fontSize: 12,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Pickup',
                                      filled: true,
                                      fillColor: Color(0xFFF2F3F6),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  Text(
                                    'Drop off',
                                    style: TextStyle(
                                      color: Color(0xFF98A1B2),
                                      fontSize: 12,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Destination',
                                      filled: true,
                                      fillColor: Color(0xFFF2F3F6),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          TextButton.icon(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFF475466),
                                backgroundColor: const Color(0xFFF2F3F6),
                              ),
                              onPressed: () {},
                              label: Icon(Icons.arrow_drop_down),
                              icon: Text('Today')),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF475466),
                              backgroundColor: const Color(0xFFF2F3F6),
                            ),
                            onPressed: () {},
                            label: Text('Book now'),
                            icon: Icon(Icons.add),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/mapscreen3');
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
                            color: isHovering
                                ? Color(0xFFFF5449)
                                : Color(0xFFF2F3F6),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              'Search',
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
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/otp');
                        },
                        onHover: (hovering) {
                          setState(() => ishover = hovering);
                        },
                        child: AnimatedContainer(
                            width: 400,
                            height: 55,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease,
                            padding: EdgeInsets.all(ishover ? 15 : 10),
                            decoration: BoxDecoration(
                              color: ishover
                                  ? Color(0xFFFF5449)
                                  : Color(0xFFF2F3F6),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Help',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: ishover
                                        ? Color.fromARGB(255, 255, 255, 255)
                                        : Color(0xFF344053),
                                  ),
                                ),
                                Spacer(),
                                CircleAvatar(
                                    backgroundColor: Color(0xFFF2F3F6),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xFF344053),
                                    )),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'We value your privacy.\nPlease see our ',
                                style: TextStyle(color: Colors.grey)),
                            TextSpan(
                                text: 'Terms and Privacy Policy.',
                                style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, '/privacy&policy');
                                  }),
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('All rights reserved, Orbin 2023',
                              style: TextStyle(color: Colors.grey)))
                    ]),
              )),
        ));
  }
}
