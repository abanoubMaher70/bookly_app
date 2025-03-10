import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            BookDetailsAppBar(),
            SizedBox(height: 10),
            BookDetailsSection(),
            SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
