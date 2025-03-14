import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.books});

  final Item books;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => GoRouter.of(
            context,
          ).push(AppRouter.kBookDetailsView, extra: books),
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        width: double.infinity,
        height: 130,
        child: Row(
          children: [
            BookCoverItem(borderRadius: 4, book: books),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    books.volumeInfo?.title ?? 'Unknown',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                  Text(
                    books.volumeInfo?.authors?[0] ?? 'Unknown',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Free", style: Styles.textStyle16),
                      CustomRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
