import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 550, right: 550, top: 200),
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('Orbin',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 251, 79, 22))),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('Welcome back ',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 44, 43, 43))),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('Enter the 6-digit code sent to you at ',
                    style:
                        TextStyle(color: Color.fromARGB(255, 125, 125, 125))),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  width: 150,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 99, 99, 99)),
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 235, 235, 235),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)))),
                    child: Text(
                      "I didn't recieve a code",
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Pinput(
                length: 6,
                onSubmitted: (value) {
                  otpCode = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                height: 35,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 251, 79, 22),
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)))),
                  child: Text('Continue'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                height: 35,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 94, 93, 93)),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 226, 226, 226))),
                    child: Text("Back")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
