import 'package:plural_noun/plural_noun.dart';
import 'package:shouldly/shouldly.dart';
import 'package:test/test.dart';

void main() {
  group('Append additional rules to an existing ruleSet', () {
    var existingRuleSet = EnglishPluralRuleSet();

    group('addNounsThatDoesNotChange method', () {
      test('Add noun that does not change: offspring=>offspring', () {
        var modifiedRuleSet = existingRuleSet.addNounsThatDoesNotChange([
          'offspring',
        ]);
        modifiedRuleSet.convertToPluralNoun('offspring').should.be('offspring');
      });
    });

    group('addIrregularNouns method', () {
      test('Add irregular noun: larva =>larvae', () {
        var modifiedRuleSet = existingRuleSet.addIrregularNouns({
          'larva': 'larvae',
        });
        modifiedRuleSet.convertToPluralNoun('larva').should.be('larvae');
      });
    });

    group('addExceptionToExistingRule method', () {
      test('Add an exception to an existing rule: embryo=>embryos', () {
        var modifiedRuleSet = existingRuleSet
            .addExceptionToExistingRule<Replace_consonantO_with_oes>({
              'embryo': 'embryos',
            });
        modifiedRuleSet.convertToPluralNoun('embryo').should.be('embryos');
      });
    });

    group('addAsLastRule method', () {
      test('Add as last rule to an existing ruleSet', () {
        var modifiedRuleSet = existingRuleSet.addAsLastRule(
          MyCustomRule('last'),
        );
        modifiedRuleSet.rules.last.should
            .beOfType<MyCustomRule>()!
            .appliesTo('last')
            .should
            .be(true);
      });
    });

    group('addAsFirstRule method', () {
      test('Add as first rule to an existing ruleSet', () {
        var modifiedRuleSet = existingRuleSet.addAsFirstRule(
          MyCustomRule('first'),
        );
        modifiedRuleSet.rules.first.should
            .beOfType<MyCustomRule>()!
            .appliesTo('first')
            .should
            .be(true);
      });
    });

    group('addRuleBefore method', () {
      test('Add before the first rule of an existing ruleSet', () {
        var modifiedRuleSet = EnglishPluralRuleSet()
            .addRuleBefore<NounsThatDoNotChange>(MyCustomRule('before_first'));
        modifiedRuleSet.rules.first.should
            .beOfType<MyCustomRule>()!
            .appliesTo('before_first')
            .should
            .be(true);
      });

      test('Add before the last rule of an existing ruleSet', () {
        var modifiedRuleSet = EnglishPluralRuleSet()
            .addRuleBefore<AppendSuffix>(MyCustomRule('before_last'));

        modifiedRuleSet.rules[modifiedRuleSet.rules.length - 2].should
            .beOfType<MyCustomRule>()!
            .appliesTo('before_last')
            .should
            .be(true);
      });
    });

    group('addRuleAfter method', () {
      test('Add after the first rule of an existing ruleSet', () {
        var modifiedRuleSet = EnglishPluralRuleSet()
            .addRuleAfter<NounsThatDoNotChange>(MyCustomRule('after_first'));
        modifiedRuleSet.rules[1].should
            .beOfType<MyCustomRule>()!
            .appliesTo('after_first')
            .should
            .be(true);
      });

      test('Add after the last rule of an existing ruleSet', () {
        var modifiedRuleSet = EnglishPluralRuleSet()
            .addRuleAfter<AppendSuffix>(MyCustomRule('after_last'));
        modifiedRuleSet.rules.last.should
            .beOfType<MyCustomRule>()!
            .appliesTo('after_last')
            .should
            .be(true);
      });
    });
  });
}

class MyCustomRule implements PluralRule {
  final String noun;

  MyCustomRule(this.noun);

  @override
  bool appliesTo(String singularNoun) => singularNoun == noun;

  @override
  String convertToPluralNoun(String singularNoun) => '-$noun-';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyCustomRule &&
          runtimeType == other.runtimeType &&
          noun == other.noun;

  @override
  int get hashCode => noun.hashCode;
}
