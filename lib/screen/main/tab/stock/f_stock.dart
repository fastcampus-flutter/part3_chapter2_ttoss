import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:flutter/material.dart';

import 'setting/s_setting.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({Key? key}) : super(key: key);

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          actions: [
            ImageButton(
              imagePath: '$basePath/icon/stock_search.png',
              onTap: () {
                context.showSnackbar('검색');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () {
                context.showSnackbar('캘린더');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () {
                Nav.push(SettingScreen());
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              title,
              tabBar,
              myAccount,
              height20,
              myStocks,
            ],
          ),
        ),
      ],
    );
  }

  Widget get title => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          '토스증권'.text.size(24).bold.make(),
          width20,
          'S&P 500'.text.size(13).bold.color(context.appColors.lessImportant).make(),
          width10,
          3919.29.toString().text.size(13).bold.color(context.appColors.plus).make(),
        ],
      ).pOnly(left: 20);

  Widget get tabBar => Placeholder();

  Widget get myAccount => Placeholder();

  Widget get myStocks => Placeholder();
}
