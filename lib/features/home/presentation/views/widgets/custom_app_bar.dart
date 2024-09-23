import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      automaticallyImplyLeading: false,
      title: SvgPicture.asset(
        AssetsData.logo,
        height: 23,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AssetsData.searchIcon,
            height: 35,
          ),
        ),
      ],
    );
  }
}
