import 'package:fast_app_base/common/theme/custom_theme.dart';

import 'item/preference_item.dart';
import 'item/rx_preference_item.dart';

class Prefs {
  static final appTheme = PreferenceItem<CustomTheme>('appTheme', CustomTheme.light);
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOnRx', false);
}
