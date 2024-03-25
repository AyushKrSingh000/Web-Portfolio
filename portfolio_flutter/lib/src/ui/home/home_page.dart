import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/src/ui/home/home_page_model.dart';
import 'package:portfolio_flutter/src/ui/home/main_section/main_section.dart';
import '../../constants/colors.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/explorer_section.dart';
import 'widgets/side_bar.dart';
import 'widgets/top_bar.dart';
import '../../utils/color_utils.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  double pixels = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(homePageProvider, (previous, next) {});
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorUtils.getColor(context, scaffoldColor),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTabBar(),
          Expanded(
            child: Row(
              children: [
                CustomSideBar(),
                ExplorerSection(),
                Expanded(child: MainSection()),
              ],
            ),
          ),
          CustomBottomBar(),
        ],
      ),
    ));
  }
}
