import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:flutter/material.dart';

class BookCoverItem extends StatelessWidget {
  const BookCoverItem({this.borderRadius = 14, super.key, required this.book});
  final double borderRadius;
  final Item book;

  @override
  Widget build(BuildContext context) {
    final thumbnailUrl = book.volumeInfo?.imageLinks?.thumbnail ?? '';
    return AspectRatio(
      aspectRatio: 0.75,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(thumbnailUrl),
          ),
        ),
      ),
    );
  }
}
