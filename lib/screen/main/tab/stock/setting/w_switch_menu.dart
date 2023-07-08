import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_os_switch.dart';
import 'package:flutter/material.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchMenu(this.title, this.value, {required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.bold.make(),
        emptyExpanded,
        OsSwitch(
          value: value,
          onChanged: onChanged,
        )
      ],
    ).pSymmetric(h: 20);
  }
}
