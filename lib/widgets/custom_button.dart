// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

// class CustomButton extends StatelessWidget {
//   const CustomButton({
//     Key? key,
//     required this.btnName,
//     this.icon,
//     this.bgColor,
//     this.textStyle,
//     required this.callBack,
//   }) : super(key: key);

//   final String? btnName;
//   final Icon? icon;
//   final Color? bgColor;
//   final TextStyle? textStyle;
//   final VoidCallback? callBack;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         callBack!();
//       },
//       child: AnimatedContainer(
//         width: 400,
//         height: 55,
//         duration: const Duration(milliseconds: 200),
//         curve: Curves.ease,
//         decoration: BoxDecoration(
//           color: bgColor,
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Center(
//           child: Text(
//             btnName!,
//             style: TextStyle(fontSize: 20, color: textStyle),
//           ),
//         ),
//       ),
//     );
//   }
// }
