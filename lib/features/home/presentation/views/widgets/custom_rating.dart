import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.amber),
        SizedBox(width: 5),
        Text("4.8", style: Styles.textStyle20),
        SizedBox(width: 3),
        Text("(2390)", style: Styles.textStyle14),
      ],
    );
  }
}
