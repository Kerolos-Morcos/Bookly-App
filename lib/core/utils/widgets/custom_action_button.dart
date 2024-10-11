import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  final Color color, backgroundColor;
  final String text;
  final BorderRadius? borderRadius;
  final Function() onPressed;
  const CustomActionButton({
    super.key,
    required this.color,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 53,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ??
                  BorderRadius.circular(
                    12,
                  ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.subTitleMedium18.copyWith(
              color: color,
              backgroundColor: backgroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
