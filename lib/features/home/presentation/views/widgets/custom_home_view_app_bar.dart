import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
      titleSpacing: 24,
      automaticallyImplyLeading: false,
      title: SvgPicture.asset(
        AssetsData.logo,
        height: 23,
      ),
      actions: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
          icon: SvgPicture.asset(
            AssetsData.searchIcon,
            height: 35,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
