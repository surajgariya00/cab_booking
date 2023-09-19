import 'package:flutter/material.dart';

class PaymentMethodTile extends StatelessWidget {
  final PaymentMethod method;
  final bool isSelected;
  final VoidCallback onTap;

  PaymentMethodTile({
    super.key,
    required this.method,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(method.iconData), // Icon in front of the title
      title: Text(method.title),

      trailing: isSelected
          ? Icon(Icons.check, color: const Color.fromARGB(255, 50, 50, 50))
          : null,
      onTap: onTap,
    );
  }
}

class PaymentMethod {
  final String title;

  final IconData iconData;

  PaymentMethod({
    required this.title,
    required this.iconData,
  });
}
