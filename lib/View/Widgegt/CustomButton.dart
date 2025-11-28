import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;
  final BoxBorder? border;
  final String text;
  final TextStyle? textStyle;
  final String? imagePath;
  final Function()? onTap;

  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    this.color,
    this.border,
    this.imagePath,
    this.textStyle,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          border: border,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null) ...[
              Image.asset(
                imagePath!,
                height: 22,
              ),
              SizedBox(width: 8),
            ],

            Text(
              text,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
