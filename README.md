# plural_noun

Converts an English singular noun to a plural noun using a set of rules.
This works fine for most nouns, but note that some exceptions might not convert correctly.

## Usage

Example:
```dart
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
```

You can also:
* Append to existing rules: See [append_to_existing_rules_example.dart](https://github.com/domain-centric/plural_noun/blob/main/example/append_to_existing_rules_example.dart)
* Create rules for other languages: See [spanish_rules_example.dart](https://github.com/domain-centric/plural_noun/blob/main/example/spanish_rules_example.dart)
