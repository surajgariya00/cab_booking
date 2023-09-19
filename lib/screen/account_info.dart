import 'package:flutter/material.dart';
import 'package:orbin/components/help_button.dart';
import 'package:orbin/screen/setting.dart';

class ProfilePopup extends StatelessWidget {
  final String name;
  final String email;

  ProfilePopup({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.topRight,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the popup
                    },
                    icon: Icon(Icons.close),
                  ),
                  Text(
                    'Account Info',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('Name: $name'),
              Text('Email: $email'),
              SizedBox(height: 20),
              SettingButton(),
              HelpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
