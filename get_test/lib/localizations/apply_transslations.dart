import 'package:get/get.dart';

import 'langauges/ar.dart';
import 'langauges/en.dart';
import 'langauges/fr.dart';

class ApplyTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {"en": en, "fr": fr, "ar": ar};
}
