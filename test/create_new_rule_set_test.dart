// ignore_for_file: camel_case_types

import 'package:plural_noun/plural_noun.dart';
import 'package:shouldly/shouldly.dart';
import 'package:test/test.dart';

void main() {
  group('Append Spanish rules to an empty ruleSet', () {
    test('Add noun that does not change on empty ruleSet: lunes=>lunes', () {
      var newRuleSet = PluralRuleSet([]);
      var modifiedRuleSet = newRuleSet.addNounsThatDoesNotChange(['lunes']);
      modifiedRuleSet.convertToPluralNoun('lunes').should.be('lunes');
    });

    test('Add irregular noun on empty ruleSet: luz =>luces', () {
      var newRuleSet = PluralRuleSet([]);
      var modifiedRuleSet = newRuleSet.addIrregularNouns({'luz': 'luces'});
      modifiedRuleSet.convertToPluralNoun('luz').should.be('luces');
    });

    test('Add an rule', () {
      var newRuleSet = PluralRuleSet([]);
      var modifiedRuleSet = newRuleSet.addAsFirstRule(AppendSuffix('s'));
      modifiedRuleSet.convertToPluralNoun('casa').should.be('casas');
    });

    test('Add a rule before an existing rule', () {
      var newRuleSet = PluralRuleSet([AppendSuffix('s')]);
      var modifiedRuleSet = newRuleSet.addRuleBefore<AppendSuffix>(
        Replace_consonant_with_consonantEs(),
      );
      modifiedRuleSet.convertToPluralNoun('papel').should.be('papeles');
    });

    test('Add an exception to an existing rule', () {
      var newRuleSet = PluralRuleSet([Replace_consonant_with_consonantEs()]);
      var modifiedRuleSet = newRuleSet
          .addExceptionToExistingRule<Replace_consonant_with_consonantEs>({
            'lunes': 'lunes',
          });
      modifiedRuleSet.convertToPluralNoun('lunes').should.be('lunes');
    });
  });
}

class Replace_consonant_with_consonantEs extends RuleWithExceptions {
  Replace_consonant_with_consonantEs([SingularToPlural exceptions = const {}])
    : super(
        baseRule: ConditionalPluralRule(
          RegexpPredicate(consonantExpression),
          AppendConverter('es'),
        ),
        exceptions: exceptions,
      );
}
