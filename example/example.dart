import 'package:plural_noun/plural_noun.dart';

final pluralEngine = PluralEngine();

void main() {
  print(pluralEngine.convertToPluralNoun('mouse'));
  //prints mice

  print(pluralEngine.convertToPluralNoun('Car'));
  //prints Cars

  print(pluralEngine.convertToPluralNoun('TAX'));
  //prints TAXES

  // For more examples see: https://github.com/efficientyboosters/plural_noun/blob/main/test/plural_noun_test.dart
}
