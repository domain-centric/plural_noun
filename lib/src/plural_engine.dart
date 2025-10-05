import 'package:plural_noun/plural_noun.dart';


/// A wrapper around a [PluralRuleSet] that ensures:
/// * spaces in the input are trimmed off
/// * the input is case unsensitive (is converted to lowercase)
/// * the output gets the same letter casing as the input (crude implementation)
class PluralEngine implements PluralConverter {
  final PluralRuleSet ruleSet;

  PluralEngine([PluralRuleSet? ruleSet])
    : ruleSet = ruleSet ?? EnglishPluralRuleSet();

  @override
  String convertToPluralNoun(String singularNoun) {
    String trimmedSingularNoun = singularNoun.trim();
    CaseType caseType = findCaseTypeFor(trimmedSingularNoun);
    String normalizedSingularNoun = trimmedSingularNoun.toLowerCase();
    var pluralNoun = ruleSet.convertToPluralNoun(normalizedSingularNoun);
    var casedPluralNoun = caseType.convert(pluralNoun);
    return casedPluralNoun;
  }
}
