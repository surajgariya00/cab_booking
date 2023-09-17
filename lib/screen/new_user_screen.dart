import 'package:flutter/material.dart';

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
                child: Text("What's your name? ",
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
                child: Text(
                    'Please let us know the appropriate way to address you.',
                    style:
                        TextStyle(color: Color.fromARGB(255, 125, 125, 125))),
              ),
              SizedBox(
                height: 20,
              ),
              Align(alignment: Alignment.bottomLeft, child: Text('First name')),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter First name',
                  hintText: 'User first name',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(alignment: Alignment.bottomLeft, child: Text('Last name')),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter last name',
                  hintText: 'User last name',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 390,
                height: 40,
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
                width: 390,
                height: 40,
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
