import 'package:get/get.dart';

import 'languages/ar.dart';
import 'languages/en.dart';
import 'languages/fr.dart';

class AppLocalization extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {"en": en, "ar": ar, "fr": fr};
}
