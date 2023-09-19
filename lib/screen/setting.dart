import 'package:flutter/material.dart';

class SettingButton extends StatefulWidget {
  const SettingButton({super.key});

  @override
  State<SettingButton> createState() => _SettingButtonState();
}

class _SettingButtonState extends State<SettingButton> {
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
            color: ishover ? Color(0xFFFF5449) : Color(0xFFF2F3F6),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Text(
                'Setting',
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

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(children: [Text("Setting")]),
      ),
    );
  }
}
