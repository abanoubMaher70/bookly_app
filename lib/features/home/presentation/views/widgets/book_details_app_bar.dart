import 'package:flutter/material.dart';

class BookDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BookDetailsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close_rounded, color: Colors.white, size: 28),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 28,
          ),
        ),
      ],
    );
  }
}
