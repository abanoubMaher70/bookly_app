import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return BookCoverItem(
                  borderRadius: 8,
                  book: state.books[index].items![index],
                );
              },
            ),
          );
        } else if (state is SimilerBooksFailure) {
          return CustomErrorMessage(message: state.errMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
