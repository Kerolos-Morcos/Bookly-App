import 'package:bookly_app/features/home/presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.sizeOf(context).height * 0.102),
        child: const CustomHomeViewAppBar(),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: HomeViewBody(),
      ),
    );
  }
}
