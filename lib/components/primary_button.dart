import 'dart:async';

import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const PrimaryButton({super.key, required this.onPressed, required this.text});

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool isHovered = false;
  bool isLoading = false;

  void _handleHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }

  void _handleButtonPress() {
    setState(() {
      isLoading = true;
    });

    // Simulate loading for 3 seconds
    Timer(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
      widget.onPressed();
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : _handleButtonPress,
      onHover: _handleHover,
      child: Container(
        width: 570,
        height: 55, // Set the desired width
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isHovered
              ? Color.fromARGB(255, 248, 131, 92)
              : Color.fromARGB(255, 251, 79, 22), // Change color on hover
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          alignment: Alignment.center, // Center the contents
          children: [
            isLoading
                ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : SizedBox.shrink(), // Empty SizedBox when not loading
            Text(
              isLoading ? '' : widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
