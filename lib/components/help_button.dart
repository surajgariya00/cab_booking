import 'package:flutter/material.dart';

class HelpButton extends StatefulWidget {
  const HelpButton({super.key});

  @override
  State<HelpButton> createState() => _HelpButtonState();
}

class _HelpButtonState extends State<HelpButton> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/help');
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
                ? Color.fromARGB(255, 229, 229, 229)
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
    );
  }
}

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(children: [
            Text("help will reach you"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back"))
          ]),
        ),
      ),
    );
  }
}
