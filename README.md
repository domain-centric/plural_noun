# plural_noun

Converts a English singular noun to a plural noun using a set of rules.
This works fine for most nouns, but note that some exceptions might not convert correctly.

## Usage

Example:
```dart
import 'package:plural_noun/plural_noun.dart';

main() {
  print(PluralRules().convertToPluralNoun('mouse'));
  //prints mice

  print(PluralRules().convertToPluralNoun('Car'));
  //prints Cars

  print(PluralRules().convertToPluralNoun('TAX'));
  //prints TAXES

  // For more examples see: https://github.com/efficientyboosters/plural_noun/blob/main/test/plural_noun_test.dart
}```
