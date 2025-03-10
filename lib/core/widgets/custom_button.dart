import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookPreviewButton extends StatelessWidget {
  const BookPreviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55,
        decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.deepOrange,
            shadowColor: Colors.transparent,
            padding: const EdgeInsets.all(0),
          ),
          onPressed: () {},
          child: Text(
            "Free Preview",
            style: Styles.textStyle20.copyWith(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class PricingButton extends StatelessWidget {
  const PricingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: const EdgeInsets.all(0),
          ),
          onPressed: () {},
          child: Text(
            "19.99 \$",
            style: Styles.textStyle20.copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
