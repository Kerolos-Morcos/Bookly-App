import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const CustomSearchTextField(),
          const SizedBox(height: 30),
          Text(
            'Search results',
            style: Styles.titleLargeBold22.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.white.withAlpha(230),
            ),
          ),
          const SizedBox(height: 12),
          const Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
