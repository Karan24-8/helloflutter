import 'package:flag/flag.dart';

class HelloFlutter {
  final String language;
  final String text;
  final FlagsCode flagCode;
  final String locale;

  HelloFlutter(this.language, this.text, this.flagCode, this.locale);

  static HelloFlutter inEnglish = HelloFlutter('English', 'Hello Flutter', FlagsCode.US, 'en');
  static HelloFlutter inHindi = HelloFlutter('Hindi', 'नमस्ते Flutter', FlagsCode.IN, 'hi');
  static HelloFlutter inSpanish = HelloFlutter('Spanish', 'Hola Flutter', FlagsCode.ES, 'es');
  static HelloFlutter inFrench = HelloFlutter('French', 'Bonjour Flutter', FlagsCode.FR, 'fr');
  static HelloFlutter inGerman = HelloFlutter('German', 'Hallo Flutter', FlagsCode.DE, 'de');
  static HelloFlutter inChinese = HelloFlutter('Chinese', '你好 Flutter', FlagsCode.CN, 'cn');
  static HelloFlutter inJapanese = HelloFlutter('Japanese', 'こんにちは Flutter', FlagsCode.JP, 'jp');
  static HelloFlutter inPotuguese = HelloFlutter('Portugese', 'Olá Flutter', FlagsCode.PT, 'pt');
  static HelloFlutter inRussian = HelloFlutter('Russian', 'Привет Flutter', FlagsCode.RU, 'ru');
  static HelloFlutter inTurkish = HelloFlutter('Turkish', 'Selam Flutter', FlagsCode.TR, 'tr');
  static HelloFlutter inKorean = HelloFlutter('Korean', '안녕하세요 Flutter', FlagsCode.KP, 'kp');
  static HelloFlutter inNepali = HelloFlutter('Nepali', 'नमस्कार Flutter', FlagsCode.NP, 'np');
  static HelloFlutter inIrish = HelloFlutter('Irish', 'Dia duit Flutter', FlagsCode.IR, 'ir');
  static HelloFlutter inItalian = HelloFlutter('Italian', 'Ciao Flutter', FlagsCode.IT, 'it');

  static List<HelloFlutter> get allLanguages => <HelloFlutter>[
        inEnglish,
        inHindi,
        inSpanish,
        inFrench,
        inGerman,
        inChinese,
        inJapanese,
        inPotuguese,
        inRussian,
        inTurkish,
        inKorean,
        inNepali,
        inIrish,
        inItalian,
      ];
}
