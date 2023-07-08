import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [myAccount, height20, myStock],
    );
  }

  Widget get myAccount => const Placeholder();
  Widget get myStock => const Placeholder();
}
