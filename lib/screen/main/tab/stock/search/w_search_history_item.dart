import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/w_rounded_container.dart';

class SearchHistoryItem extends StatelessWidget {
  final void Function() onTapDelete;
  final String text;

  const SearchHistoryItem({
    Key? key,
    required this.onTapDelete,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedContainer(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text.text.maxLines(1).make(),
                    ],
                  ),
                  Tap(
                      onTap: onTapDelete,
                      child: const Icon(
                        Icons.close,
                        size: 24,
                      ).pOnly(left: 10, top: 10, bottom: 10)),
                ],
              ),
            )),
      ],
    );
  }
}
