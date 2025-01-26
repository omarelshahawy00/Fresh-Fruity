import 'package:ecommerce_app/features/home/ui/screens/widgets/custom_home_appbar.dart';
import 'package:ecommerce_app/features/home/ui/screens/widgets/home_search_field.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHomeAppbar(),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: HomeSearchField(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
