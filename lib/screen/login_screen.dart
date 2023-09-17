import 'package:country_picker/country_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

final _formkey = GlobalKey<FormState>();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHovering = false;
  final TextEditingController phoneController = TextEditingController();
  Country selectedCountry = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 530, right: 530, top: 100, bottom: 100),
          child: Center(
            child: Column(children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Orbin',
                  style: TextStyle(
                      fontSize: 39,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 251, 79, 22)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Breaking barriers, Orbin presents a stellar \nlineup of women cab drivers.",
                  style: TextStyle(color: Color(0xFF98A1B2)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Enter your mobile number",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SF Pro'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400),
                child: Form(
                  key: _formkey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter the phone number';
                      }
                      return null;
                    },
                    controller: phoneController,
                    decoration: InputDecoration(
                        hintText: "Mobile Number",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(12.0),
                          child: InkWell(
                            onTap: () {
                              showCountryPicker(
                                  context: context,
                                  countryListTheme: CountryListThemeData(
                                      bottomSheetHeight: 500),
                                  onSelect: (value) {
                                    setState(() {
                                      selectedCountry = value;
                                    });
                                  });
                            },
                            child: Text(
                              "${selectedCountry.flagEmoji}+${selectedCountry.phoneCode}",
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/otp');
                  }
                },
                onHover: (hovering) {
                  if (_formkey.currentState!.validate()) {
                    setState(() => isHovering = hovering);
                  }
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
                      'Continue',
                      style: TextStyle(
                        fontSize: 20,
                        color: isHovering
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 570,
                height: 55,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/google.png',
                      width: 32,
                    ),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xFF475466)),
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFF2F3F6),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)))),
                    label: Text('Continue with Google')),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 570,
                height: 55,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.mail_outline),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xFF475466)),
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFF2F3F6),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)))),
                    label: Text('Continue with Email')),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Upon entering your number, Orbin will send a SMS or OTP to your mobile number.',
                  style: TextStyle(color: Color(0xFF98A1B2))),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  const TextSpan(
                      text:
                          'TrukerLink will automatically log into your existing account. if you want to reset your account,',
                      style: TextStyle(color: Color(0xFF98A1B2))),
                  TextSpan(
                      text: ' click here.',
                      style: const TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/clickhere');
                        }),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text:
                          'We value your privacy by clicking Continue. you agree to our ',
                      style: TextStyle(color: Color(0xFF98A1B2))),
                  TextSpan(
                      text: 'terms and privacy policy',
                      style: TextStyle(
                          color: Color(0xFF98A1B2),
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/privacy&policy');
                        }),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: 40,
                  width: 120,
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/needhelp');
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Color(0xFF475466)),
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFFF2F3F6),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)))),
                      icon: Icon(Icons.help_outline_rounded),
                      label: Text('Need help?')),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
