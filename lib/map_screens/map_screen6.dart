import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orbin/components/help_button.dart';
import 'package:orbin/components/primary_button.dart';

class MapScreen6 extends StatefulWidget {
  const MapScreen6({super.key});

  @override
  State<MapScreen6> createState() => _MapScreen6State();
}

class _MapScreen6State extends State<MapScreen6> {
  bool hover = false;
  bool isHovering = false;
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Orbin',
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
                  icon: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 250, 248, 248),
                  )),
            ),
          )
        ],
      ),
      body: Row(
        children: [
          Container(
            width: 392,
            height: 952,
            padding: const EdgeInsets.all(32),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              border: Border.all(color: Colors.grey),
            ),
            child: Container(
              width: 328,
              height: 888,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Passenger Info',
                              style: TextStyle(
                                color: Color(0xFF344053),
                                fontSize: 30,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Booking Detail',
                              style: TextStyle(
                                color: Color(0xFF667084),
                                fontSize: 16,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                            backgroundColor: Color(0xFFF2F3F6),
                            foregroundColor: Color(0xFF344053),
                            child: Icon(Icons.edit_outlined))
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 384,
                      height: 149,
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F3F6),
                          // border: Border.all(color: Color.fromARGB(255, 193, 194, 197)),
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      // color: Color(0xFFF2F3F6),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(0xFF2970FE),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.person,
                                          color: Color.fromARGB(
                                              255, 250, 248, 248),
                                        )),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Divya Baiswar',
                                    style: TextStyle(
                                      color: Color(0xFF344053),
                                      fontSize: 16,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text('Mobile number'),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 230, 231, 235),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.message_outlined,
                                          color: Color(0xFF344053),
                                        )),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 230, 231, 235),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.phone_enabled_outlined,
                                          color: Color(0xFF344053),
                                        )),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/otp');
                          },
                          onHover: (hovering) {
                            setState(() => hover = hovering);
                          },
                          child: AnimatedContainer(
                            width: 230,
                            height: 45,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease,
                            padding: EdgeInsets.all(hover ? 15 : 10),
                            decoration: BoxDecoration(
                              color:
                                  hover ? Color(0xFFFF5449) : Color(0xFFF2F3F6),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Share',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: hover
                                      ? Color.fromARGB(255, 255, 255, 255)
                                      : Color(0xFF344053),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 230, 231, 235),
                            child: Image.asset(
                              'assets/whatsapp.jpg',
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 230, 231, 235),
                            child: Image.asset('assets/icon.jpg')),
                      ],
                    ),
                    Spacer(),
                    PrimaryButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        text: 'Finish Booking'),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/otp');
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
                            'Cancel trip',
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
                    SizedBox(
                      height: 10,
                    ),
                    const HelpButton(),
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
            ),
          ),
          Container(
            width: 392,
            height: 952,
            padding: const EdgeInsets.all(32),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              border: Border.all(color: Colors.grey),
            ),
            child: Container(
              width: 328,
              height: 888,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Orbin pass',
                              style: TextStyle(
                                color: Color(0xFF344053),
                                fontSize: 30,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Booking Detail',
                              style: TextStyle(
                                color: Color(0xFF667084),
                                fontSize: 16,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                            backgroundColor: Color(0xFFF2F3F6),
                            foregroundColor: Color(0xFF344053),
                            child: Icon(Icons.edit_outlined))
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 384,
                      height: 349,
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F3F6),
                          // border: Border.all(color: Color.fromARGB(255, 193, 194, 197)),
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      // color: Color(0xFFF2F3F6),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(0xFF2970FE),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.person,
                                          color: Color.fromARGB(
                                              255, 250, 248, 248),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Your driver',
                                        style: TextStyle(
                                          color: Color(0xFF98A1B2),
                                          fontSize: 12,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Aditi .B',
                                        style: TextStyle(
                                          color: Color(0xFF344053),
                                          fontSize: 16,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 230, 231, 235),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.message_outlined,
                                          color: Color(0xFF344053),
                                        )),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 230, 231, 235),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.phone_enabled_outlined,
                                          color: Color(0xFF344053),
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/car.jpg'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  const Column(
                                    children: [
                                      Text(
                                        'Maruti Suzuki swift dzire',
                                        style: TextStyle(
                                          color: Color(0xFF98A1B2),
                                          fontSize: 12,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                      Text(
                                        'No- HR26DQ5551',
                                        style: TextStyle(
                                          color: Color(0xFF2970FE),
                                          fontSize: 16,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 230, 231, 235),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.navigation_outlined,
                                          color: Color(0xFF344053),
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(),
                              SizedBox(
                                height: 15,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '₹500.21',
                                    style: TextStyle(
                                      color: Color(0xFF2970FE),
                                      fontSize: 24,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Text(
                                        'Payment method',
                                        style: TextStyle(
                                          color: Color(0xFF98A1B2),
                                          fontSize: 14,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w500,
                                          height: 0.10,
                                        ),
                                      ),
                                      Text(
                                        'Cash',
                                        style: TextStyle(
                                          color: Color(0xFF344053),
                                          fontSize: 14,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Divider(),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.edit_calendar_outlined),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Thu Jan 1 ',
                                    style: TextStyle(
                                      color: Color(0xFF344053),
                                      fontSize: 16,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '5:30PM',
                                    style: TextStyle(
                                      color: Color(0xFF344053),
                                      fontSize: 16,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '20 km   one way',
                                style: TextStyle(
                                  color: Color(0xFF98A1B2),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 192,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2F3F6),
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
                            color: Color(0xFFF2F3F6),
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
                                      borderRadius: BorderRadius.circular(15.0),
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
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
