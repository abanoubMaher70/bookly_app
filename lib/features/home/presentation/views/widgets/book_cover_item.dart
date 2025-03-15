import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookCoverItem extends StatelessWidget {
  const BookCoverItem({this.borderRadius = 14, super.key, required this.book});
  final double borderRadius;
  final Item book;

  @override
  Widget build(BuildContext context) {
    final thumbnailUrl = book.volumeInfo?.imageLinks?.thumbnail ?? '';
    return GestureDetector(
      onTap:
          () => GoRouter.of(
            context,
          ).push(AppRouter.kBookDetailsView, extra: book),
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),

          child: AspectRatio(
            aspectRatio: 0.75,
            child: CachedNetworkImage(
              imageUrl: thumbnailUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
