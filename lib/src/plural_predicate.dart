import 'package:plural_noun/plural_noun.dart';

abstract class PluralPredicate {
  bool appliesTo(String noun);

  PluralRule noChange() => PluralRule(this, NoChangeConverter());

  PluralRule replaceWith(String pluralNoun) =>
      PluralRule(this, ReplaceConverter(pluralNoun));

  PluralRule replaceSuffix(String suffixToFind, String suffixReplacement) =>
      PluralRule(this, ReplaceSuffixConverter(suffixToFind, suffixReplacement));

  PluralRule appendWith(String suffixToAppend) =>
      PluralRule(this, AppendConverter(suffixToAppend));
}

class EndsWithPredicate extends PluralPredicate {
  final String suffix;

  EndsWithPredicate(this.suffix);

  @override
  bool appliesTo(String noun) => noun.endsWith(suffix);
}

class ComparesPredicate extends PluralPredicate {
  final String nounToFind;

  ComparesPredicate(this.nounToFind);

  @override
  bool appliesTo(String noun) => noun == nounToFind;
}

class RegexpPredicate extends PluralPredicate {
  final RegExp regExp;

  RegexpPredicate(String regexp) : regExp = RegExp(regexp);

  @override
  bool appliesTo(String noun) => regExp.hasMatch(noun);
}

class AllPredicate extends PluralPredicate {
  @override
  bool appliesTo(String noun) => true;
}
