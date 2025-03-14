import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksCoversListView extends StatelessWidget {
  const BooksCoversListView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.22;

    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: height,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.first.items?.length ?? 0,
              itemBuilder:
                  (context, index) => BookCoverItem(
                    borderRadius: 8,
                    book: state.books.first.items![index],
                  ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMessage(message: state.errMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
