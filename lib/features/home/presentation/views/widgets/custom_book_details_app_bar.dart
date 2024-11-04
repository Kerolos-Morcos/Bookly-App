import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.close,
            size: 35,
            color: Colors.white,
          ),
        ),
        const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.shopping_cart_outlined,
            size: 35,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
