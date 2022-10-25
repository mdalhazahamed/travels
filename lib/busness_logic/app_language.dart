import 'package:get/get.dart';

import '../ui/language/bangla.dart';
import '../ui/language/english.dart';


class AppLanguages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': eng,
        'bn_BD': ban,
      };
}
