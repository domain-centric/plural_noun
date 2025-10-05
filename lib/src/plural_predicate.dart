import 'package:plural_noun/plural_noun.dart';

/// Checks if a [PluralRule] applies to a given singular noun
/// This class has several methods that are part of a [fluent interface](https://en.wikipedia.org/wiki/Fluent_interface)
abstract class PluralPredicate {
  bool appliesTo(String singularNoun);

  PluralRule noChange() => ConditionalPluralRule(this, NoChangeConverter());

  PluralRule replaceWith(String pluralNoun) =>
      ConditionalPluralRule(this, ReplaceConverter(pluralNoun));

  PluralRule replaceSuffix(String suffixToFind, String suffixReplacement) =>
      ConditionalPluralRule(
        this,
        ReplaceSuffixConverter(suffixToFind, suffixReplacement),
      );

  PluralRule appendWith(String suffixToAppend) =>
      ConditionalPluralRule(this, AppendConverter(suffixToAppend));
}

/// Checks if a singular noun end with a given suffix
class EndsWithPredicate extends PluralPredicate {
  final String suffix;

  EndsWithPredicate(this.suffix);

  @override
  bool appliesTo(String singularNoun) => singularNoun.endsWith(suffix);
}

/// Checks if a singular noun compares with a noun to find
class ComparesPredicate extends PluralPredicate {
  final String nounToFind;

  ComparesPredicate(this.nounToFind);

  @override
  bool appliesTo(String singularNoun) => singularNoun == nounToFind;
}

/// Checks if a singular noun matches a [RegExp]
class RegexpPredicate extends PluralPredicate {
  final RegExp regExp;

  RegexpPredicate(String regexp) : regExp = RegExp(regexp);

  @override
  bool appliesTo(String singularNoun) => regExp.hasMatch(singularNoun);
}

/// Always applies. This is used for the last [PluralRule] that add's an s
class AllPredicate extends PluralPredicate {
  @override
  bool appliesTo(String singularNoun) => true;
}
