import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookCoverItem extends StatelessWidget {
  const BookCoverItem({this.borderRadius = 14, super.key});
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.75,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetsImage.bookCover),
          ),
        ),
      ),
    );
  }
}
