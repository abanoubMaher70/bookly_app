import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_item.dart';
import 'package:flutter/material.dart';

class BooksCoversListView extends StatelessWidget {
  const BooksCoversListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return const BookCoverItem();
        },
      ),
    );
  }
}
