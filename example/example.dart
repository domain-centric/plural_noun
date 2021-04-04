import 'package:plural_noun/plural_noun.dart';

main() {
  print(PluralRules().convertToPluralNoun('mouse'));
  //prints mice

  print(PluralRules().convertToPluralNoun('Car'));
  //prints Cars

  print(PluralRules().convertToPluralNoun('TAX'));
  //prints TAXES

  // For more examples see:
}