import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/models/book_model/volume_info.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/search/presentation/manager/search_a_book/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return TextField(
      controller: controller,
      onChanged: (value) {
        if (value.isNotEmpty) {
          context.read<SearchBookCubit>().fetchSearchBooksResult(
                BookModel(
                  volumeInfo: VolumeInfo(
                    title: value,
                  ),
                ),
              );
        }
      },
      decoration: InputDecoration(
        enabledBorder: buildOutlinedInputBorder(),
        focusedBorder: buildOutlinedInputBorder(),
        hintText: 'Search for books...',
        suffixIcon: IconButton(
          onPressed: () {
            controller.clear();
          },
          icon: Opacity(
            opacity: 0.7,
            child: SvgPicture.asset(
              AssetsData.searchIcon,
              height: 25,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
