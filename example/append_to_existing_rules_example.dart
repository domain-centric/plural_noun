import 'package:plural_noun/plural_noun.dart';

final extendedRules = EnglishPluralRuleSet()
    .addNounsThatDoesNotChange(['offspring'])
    .addIrregularNouns({'larva': 'larvae'})
    .addExceptionToExistingRule<Replace_consonantO_with_oes>({
      'embryo': 'embryos',
    });

/// other fluent interface methods:
/// * [PluralRuleSet.addAsFirstRule]
/// * [PluralRuleSet.addAsLastRule]
/// * [PluralRuleSet.addRuleBefore]
/// * [PluralRuleSet.addRuleAfter]
/// See examples in https://github.com/efficientyboosters/plural_noun/blob/main/test/append_existing_rule_set_test.dart

final pluralEngine = PluralEngine(extendedRules);

void main() {
  print(pluralEngine.convertToPluralNoun('offspring'));
  //prints offspring

  print(pluralEngine.convertToPluralNoun('Larva'));
  //prints Larvae

  print(pluralEngine.convertToPluralNoun('EMBRYO'));
  //prints EMBRYOS
}
