import 'package:flutter/material.dart';
import 'package:orbin/components/primary_button.dart';
import 'package:orbin/components/secondary_button.dart';
import 'package:orbin/components/text_field.dart';

class NewUser extends StatefulWidget {
  const NewUser({super.key});

  @override
  State<NewUser> createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 550, right: 550, top: 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Orbin',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 251, 79, 22))),
              SizedBox(
                height: 20,
              ),
              Text("What's your name? ",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 44, 43, 43))),
              SizedBox(
                height: 15,
              ),
              Text('Please let us know the appropriate way to address you.',
                  style: TextStyle(color: Color.fromARGB(255, 125, 125, 125))),
              SizedBox(
                height: 20,
              ),
              Text('First name'),
              SizedBox(
                height: 10,
              ),
              CustomTextField(labelText: 'Enter First name'),
              SizedBox(
                height: 10,
              ),
              Text('Last name'),
              SizedBox(
                height: 10,
              ),
              CustomTextField(labelText: 'Enter last name'),
              const SizedBox(
                height: 10,
              ),
              PrimaryButton(onPressed: () {}, text: 'Continue'),
              SizedBox(
                height: 10,
              ),
              SecondaryButton(onPressed: () {}, text: 'Back')
            ],
          ),
        ),
      ),
    );
  }
}
