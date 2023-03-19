import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? width;
  final double height;
  final Color color;
  final String text;
  final Color textColor;
  final bool isAddIcon;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final BorderRadius borderRadius;

  CustomButton({
    super.key,
    this.onPressed,
    this.width,
    this.height = 50.0,
    this.color = Colors.red,
    required this.text,
    this.textColor = Colors.white,
    this.isAddIcon = false,
    this.icon = Icons.add,
    this.iconSize = 24.0,
    Color? iconColor,
    BorderRadius? borderRadius,
    // this.borderRadius = const BorderRadius.all(Radius.circular(9.0)),
  })  : iconColor = iconColor ?? Colors.red.withOpacity(0.98),
        borderRadius = borderRadius ?? BorderRadius.circular(9.0);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: borderRadius,
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.red, width: 1.2),
          borderRadius: borderRadius,
         
        ),
        child: !isAddIcon
            ? Text(text, style:const TextStyle(color: Colors.red))
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, size: iconSize, color: iconColor),
                  const SizedBox(width: 2.0),
                  Text(text,
                      style: const TextStyle(color: Colors.black)),
                ],
              ),
      ),
    );
  }
}