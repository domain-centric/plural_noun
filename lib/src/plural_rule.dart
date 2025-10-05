import 'package:plural_noun/plural_noun.dart';

/// A [PluralRule] checks if a condition ([PluralPredicate]) applies for an singular noun.
/// If so, the singular noun can be converted to the plural form using a [PluralConverter]
/// This interface has several static methods that are part of
/// a [fluent interface](https://en.wikipedia.org/wiki/Fluent_interface)
/// See [englishBasicPluralRules] for example implementation
abstract class PluralRule {
  static PluralPredicate ifEndsWith(String suffix) => EndsWithPredicate(suffix);

  static PluralPredicate ifMatchedRegexp(String regexp) =>
      RegexpPredicate(regexp);

  static PluralPredicate ifMatches(String singularNoun) =>
      ComparesPredicate(singularNoun);

  static PluralRule appendSuffix(String suffix) => AppendSuffix(suffix);

  bool appliesTo(String singularNoun);

  String convertToPluralNoun(String singularNoun);
}

class PluralRuleSet implements PluralRule {
  final List<PluralRule> rules;

  PluralRuleSet(this.rules);

  /// This method is part of a [Fluent interface](https://en.wikipedia.org/wiki/Fluent_interface)
  /// Note that this method returns a modified copy!
  PluralRuleSet addNounsThatDoesNotChange(List<String> nounsThatDoNotChange) {
    var newRule = NounsThatDoNotChange([
      ...nounsThatDoNotChange.map((noun) => normalize(noun)),
    ]);
    var newRules = [newRule, ...rules];
    return PluralRuleSet(newRules);
  }

  /// This method is part of a [Fluent interface](https://en.wikipedia.org/wiki/Fluent_interface)
  /// Note that this method returns a modified copy!
  PluralRuleSet addIrregularNouns(SingularToPlural irregularNouns) {
    var newRule = IrregularNouns(
      irregularNouns.map(
        (key, value) => MapEntry(normalize(key), normalize(value)),
      ),
    );
    var newRules = [newRule, ...rules];
    return PluralRuleSet(newRules);
  }

  /// This method is part of a [Fluent interface](https://en.wikipedia.org/wiki/Fluent_interface)
  /// Note that this method returns a modified copy!
  PluralRuleSet addExceptionToExistingRule<
    RULE_TYPE_TO_FIND extends RuleWithExceptions
  >(final SingularToPlural additionalExceptions) {
    var matchingRules = rules.whereType<RULE_TYPE_TO_FIND>();
    if (matchingRules.length != 1) {
      throw ArgumentError('Could not find a single rule of type: T');
    }
    var rule = matchingRules.first;
    var newRule = rule.copyWithAdditionalExceptions(additionalExceptions);
    var newRules = [...rules];
    var index = rules.indexOf(rule);
    newRules.remove(rule);
    newRules.insert(index, newRule);
    return PluralRuleSet(newRules);
  }

  /// This method is part of a [Fluent interface](https://en.wikipedia.org/wiki/Fluent_interface)
  /// Note that this method returns a modified copy!
  PluralRuleSet addAsFirstRule<RULE_TYPE_TO_FIND extends PluralRule>(
    PluralRule ruleToAdd,
  ) {
    var newRules = [ruleToAdd, ...rules];
    return PluralRuleSet(newRules);
  }

  /// This method is part of a [Fluent interface](https://en.wikipedia.org/wiki/Fluent_interface)
  /// Note that this method returns a modified copy!
  PluralRuleSet addRuleBefore<RULE_TYPE_TO_FIND extends PluralRule>(
    PluralRule ruleToAdd,
  ) {
    var ruleGroupsAfter = rules.whereType<RULE_TYPE_TO_FIND>();
    if (ruleGroupsAfter.isEmpty) {
      throw ArgumentError('This PluralRuleGroup does not contain a: T');
    }
    var index = rules.indexOf(ruleGroupsAfter.first);
    var newRules = [...rules];
    newRules.insert(index, ruleToAdd);
    return PluralRuleSet(newRules);
  }

  /// This method is part of a [Fluent interface](https://en.wikipedia.org/wiki/Fluent_interface)
  /// Note that this method returns a modified copy!
  PluralRuleSet addRuleAfter<RULE_TYPE_TO_FIND extends PluralRule>(
    PluralRule newRule,
  ) {
    var ruleGroupsAfter = rules.whereType<RULE_TYPE_TO_FIND>();
    if (ruleGroupsAfter.isEmpty) {
      throw ArgumentError('This PluralRules does not contain a: T');
    }
    var index = rules.indexOf(ruleGroupsAfter.last) + 1;
    var newRuleGroups = [...rules];
    newRuleGroups.insert(index, newRule);
    return PluralRuleSet(newRuleGroups);
  }

  /// This method is part of a [Fluent interface](https://en.wikipedia.org/wiki/Fluent_interface)
  /// Note that this method returns a modified copy!
  PluralRuleSet addAsLastRule<RULE_TYPE_TO_FIND extends PluralRule>(
    PluralRule ruleToAdd,
  ) {
    var newRules = [...rules, ruleToAdd];
    return PluralRuleSet(newRules);
  }

  @override
  bool appliesTo(String singularNoun) =>
      rules.any((rule) => rule.appliesTo(singularNoun));

  @override
  String convertToPluralNoun(String singularNoun) {
    var rule = rules.firstWhere((rule) => rule.appliesTo(singularNoun));
    return rule.convertToPluralNoun(singularNoun);
  }

  String normalize(String noun) => noun.trim().toLowerCase();
}

typedef SingularToPlural =
    Map<
      /// singular noun
      String,

      /// plural noun
      String
    >;

class RuleWithExceptions implements PluralRule {
  final SingularToPlural exceptions;
  final PluralRule baseRule;

  RuleWithExceptions({required this.baseRule, required this.exceptions});

  RuleWithExceptions copyWithAdditionalExceptions(
    final SingularToPlural additionalExceptions,
  ) => RuleWithExceptions(
    baseRule: baseRule,
    exceptions: {...exceptions, ...additionalExceptions},
  );

  @override
  bool appliesTo(String singularNoun) =>
      exceptions.containsKey(singularNoun) || baseRule.appliesTo(singularNoun);

  @override
  String convertToPluralNoun(String singularNoun) {
    if (exceptions.containsKey(singularNoun)) {
      return exceptions[singularNoun]!;
    }
    return baseRule.convertToPluralNoun(singularNoun);
  }
}

class AppendSuffix implements PluralRule {
  final String suffix;

  AppendSuffix(this.suffix);

  @override
  bool appliesTo(String singularNoun) => true;

  @override
  String convertToPluralNoun(String singularNoun) => singularNoun + suffix;
}

class NounsThatDoNotChange implements PluralRule {
  final List<String> nounsThatDoNotChange;

  NounsThatDoNotChange(this.nounsThatDoNotChange);

  @override
  bool appliesTo(String singularNoun) =>
      nounsThatDoNotChange.contains(singularNoun);

  @override
  String convertToPluralNoun(String noun) => noun;
}

class IrregularNouns implements PluralRule {
  final SingularToPlural singularToPlural;

  IrregularNouns(this.singularToPlural);

  @override
  bool appliesTo(String singularNoun) =>
      singularToPlural.keys.contains(singularNoun);

  @override
  String convertToPluralNoun(String singularNoun) =>
      singularToPlural[singularNoun]!;
}

class ConditionalPluralRule implements PluralRule {
  final PluralPredicate pluralPredicate;
  final PluralConverter converter;

  ConditionalPluralRule(this.pluralPredicate, this.converter);
  @override
  bool appliesTo(String singularNoun) =>
      pluralPredicate.appliesTo(singularNoun);

  @override
  String convertToPluralNoun(String singularNoun) =>
      converter.convertToPluralNoun(singularNoun);
}

const consonantExpression = '[b-df-hj-np-tv-z]';
const vowelExpression = '[aeiouáéíóúüAEIOUÁÉÍÓÚÜ]';
const endExpression = '\$';

/// [PluralRules] has been replaced with [PluralEngine] which can work with customized rules
@Deprecated('use PluralEngine().convertToPluralNoun() instead')
class PluralRules implements PluralConverter {
  PluralRules();

  final PluralEngine engine = PluralEngine();

  @Deprecated('use PluralEngine().convertToPluralNoun() instead')
  @override
  String convertToPluralNoun(String singularNoun) =>
      engine.convertToPluralNoun(singularNoun);
}
