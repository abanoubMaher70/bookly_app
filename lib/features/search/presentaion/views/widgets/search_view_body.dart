import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentaion/views/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomTextField(
            setIcon: true,
            icon: Icon(Icons.search_rounded),
            hintText: 'Search about any book you want',
            borderColor: Colors.white,
            // autofocus: true,
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("Results", style: Styles.textStyle16),
        ),
        SizedBox(height: 15),
        SearchResultsListView(),
      ],
    );
  }
}
