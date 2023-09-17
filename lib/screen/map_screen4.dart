import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MapScreen4 extends StatefulWidget {
  const MapScreen4({super.key});

  @override
  State<MapScreen4> createState() => _MapScreen4State();
}

List<String> options = ['option 1', 'option 2', 'option 3', 'option 4'];

class _MapScreen4State extends State<MapScreen4> {
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'IND');
  String currentOption = options[0];

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
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFF2F3F6),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: Color(0xFFF2F3F6),
                            child: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Orbin Sedan',
                            style: TextStyle(
                              color: Color(0xFF344053),
                              fontSize: 18,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Rs 500',
                            style: TextStyle(
                              color: Color(0xFF2970FE),
                              fontSize: 24,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Choose a ride',
                        style: TextStyle(
                          color: Color(0xFF344053),
                          fontSize: 30,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                          height: 0.04,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        '4 orbin cab available ',
                        style: TextStyle(
                          color: Color(0xFF667084),
                          fontSize: 16,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(children: [
                          RadioListTile(
                              title: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                        child: Image.asset('assets/car.jpg')),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Aditi .B",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16.0),
                                    ),
                                  ),
                                ],
                              ),
                              value: options[1],
                              groupValue: currentOption,
                              onChanged: (value) {
                                currentOption = value.toString();
                              }),
                          Divider(),
                          RadioListTile(
                              title: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                        child: Image.asset('assets/car.jpg')),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Aditi .B",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16.0),
                                    ),
                                  ),
                                ],
                              ),
                              value: options[1],
                              groupValue: currentOption,
                              onChanged: (value) {
                                currentOption = value.toString();
                              }),
                          Divider(),
                          RadioListTile(
                              title: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                        child: Image.asset('assets/car.jpg')),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Aditi .B",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16.0),
                                    ),
                                  ),
                                ],
                              ),
                              value: options[1],
                              groupValue: currentOption,
                              onChanged: (value) {
                                currentOption = value.toString();
                              }),
                          Divider(),
                          RadioListTile(
                              title: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                        child: Image.asset('assets/car.jpg')),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Aditi .B",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16.0),
                                    ),
                                  ),
                                ],
                              ),
                              value: options[1],
                              groupValue: currentOption,
                              onChanged: (value) {
                                currentOption = value.toString();
                              }),
                        ]),
                        width: 338,
                        height: 322,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 213, 214, 217)),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/mapscreen5');
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
                              'Resquest ride',
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
