import 'package:burger_ui/utils/colors.dart';
import 'package:flutter/material.dart';

Row customRow({IconData? icon, String? text, Color? iconColor}) {
  return Row(
    children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.scaffoldBacgColor,
        ),
        child: Icon(
          icon ?? Icons.person_outline, // Default icon
          size: 22,
          color: iconColor ?? Colors.orange, // Default color
        ),
      ),
      const SizedBox(width: 20),
      Text(
        text ?? "Default Text", // Default text
        style: const TextStyle(fontSize: 15),
      ),
      const Spacer(),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.chevron_right),
      ),
    ],
  );
}
