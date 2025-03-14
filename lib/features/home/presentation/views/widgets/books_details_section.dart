import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.525,
          // child: const BookCoverItem(),
        ),
        const SizedBox(height: 25),
        const Text(
          textAlign: TextAlign.center,
          "Harry Potter and the Goblet of Fire",
          style: Styles.textStyle22,
        ),
        const SizedBox(height: 6),
        Text(
          textAlign: TextAlign.center,
          "J.K Rowling",
          style: Styles.textStyle20.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 6),
        const CustomRating(),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [PricingButton(), BookPreviewButton()],
        ),
      ],
    );
  }
}
