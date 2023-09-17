import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapScreen5 extends StatefulWidget {
  const MapScreen5({super.key});

  @override
  State<MapScreen5> createState() => _MapScreen5State();
}

class _MapScreen5State extends State<MapScreen5> {
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
      body: SingleChildScrollView(
        child: Container(
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
            child: Column(children: [
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Color(0xFFF2F3F6),
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF344053),
                      )),
                  Spacer(),
                  CircleAvatar(
                      backgroundColor: Color(0xFFF2F3F6),
                      child: Icon(
                        Icons.close,
                        color: Color(0xFF344053),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Rs 500.21',
                    style: TextStyle(
                      color: Color(0xFF2970FE),
                      fontSize: 24,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Orbin Sedan',
                    style: TextStyle(
                      color: Color(0xFF344053),
                      fontSize: 18,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 140,
                    height: 40,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/needhelp');
                        },
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 66, 65, 65)),
                            backgroundColor: MaterialStateProperty.all(
                              Color(0xFFF2F3F6),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10.0)))),
                        child: Text('Terminal 1')),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Icon(Icons.arrow_forward),
                  SizedBox(
                    width: 9,
                  ),
                  SizedBox(
                    width: 140,
                    height: 40,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/needhelp');
                        },
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 66, 65, 65)),
                            backgroundColor: MaterialStateProperty.all(
                              Color(0xFFF2F3F6),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10.0)))),
                        child: Text('Chanakyapuri')),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset('assets/car.jpg'),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aditi .B',
                        style: TextStyle(
                          color: Color(0xFF344053),
                          fontSize: 16,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '3 mins away•12:19 dropoff\nMaruti Suzuki swift dzire',
                        style: TextStyle(
                          color: Color(0xFF98A1B2),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 18,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Payment method',
                  style: TextStyle(fontSize: 18, color: Color(0xFF98A1B2)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset('assets/image 12.jpg'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Cash',
                    style: TextStyle(
                      color: Color(0xFF344053),
                      fontSize: 18,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.check)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset('assets/image 13.jpg'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'UPI',
                    style: TextStyle(
                      color: Color(0xFF344053),
                      fontSize: 18,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset('assets/Credit.jpg'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Credit/Debit card',
                    style: TextStyle(
                      color: Color(0xFF344053),
                      fontSize: 18,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Tip your driver',
                  style: TextStyle(
                    color: Color(0xFF475466),
                    fontSize: 18,
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'If you enjoyed your ride, you can tip the driver.',
                    style: TextStyle(
                      color: Color(0xFF98A1B2),
                    ),
                  )),
              SizedBox(
                height: 18,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Add your tip',
                  filled: true,
                  fillColor: Color(0xFFF2F3F6),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 249, 247, 247)),
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 243, 240, 240),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                      child: Text(
                        "Rs10",
                        style: TextStyle(
                          color: Color(0xFF475466),
                          fontSize: 14,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 249, 247, 247)),
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 243, 240, 240),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                      child: Text(
                        "Rs20",
                        style: TextStyle(
                          color: Color(0xFF475466),
                          fontSize: 14,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 249, 247, 247)),
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 243, 240, 240),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)))),
                      child: Text(
                        "Rs30",
                        style: TextStyle(
                          color: Color(0xFF475466),
                          fontSize: 14,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/mapscreen6');
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
                    color: isHovering ? Color(0xFFFF5449) : Color(0xFFF2F3F6),
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
                      color: ishover ? Color(0xFFFF5449) : Color(0xFFF2F3F6),
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
                            Navigator.pushNamed(context, '/privacy&policy');
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
      ),
    );
  }
}
