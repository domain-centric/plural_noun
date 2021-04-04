import 'package:collection/collection.dart';
import 'package:plural_noun/src/letter_case.dart';
import 'package:plural_noun/src/plural_converter.dart';
import 'package:plural_noun/src/plural_predicate.dart';

class PluralRule {
  final PluralPredicate _predicate;
  final PluralConverter _converter;

  PluralRule(this._predicate, this._converter);

  static PluralPredicate ifEndsWith(String suffix) => EndsWithPredicate(suffix);

  static PluralPredicate ifMatchedRegexp(String regexp) =>
      RegexpPredicate(regexp);

  static PluralPredicate ifMatches(String singularNoun) =>
      ComparesPredicate(singularNoun);

  static PluralRule appendSuffix(String suffix) =>
      PluralRule(AllPredicate(), AppendConverter(suffix));

  bool appliesTo(String noun) => _predicate.appliesTo(noun);

  String convertToPluralNoun(String singularNoun) =>
      _converter.convertToPluralNoun(singularNoun);
}

const _consonantExpression = '[b-df-hj-np-tv-z]';
const _endExpression = '\$';

///Based on https://www.grammarly.com/blog/plural-nouns/
class PluralRules extends DelegatingList<PluralRule>
    implements PluralConverter {
  PluralRules()
      : super([
          //nouns that don’t change
          PluralRule.ifMatches('aircraft').noChange(),
          PluralRule.ifMatches('bass').noChange(),
          PluralRule.ifMatches('bison').noChange(),
          PluralRule.ifMatches('buffalo').noChange(),
          PluralRule.ifMatches('cod').noChange(),
          PluralRule.ifMatches('deer').noChange(),
          PluralRule.ifMatches('elk').noChange(),
          PluralRule.ifMatches('fish').noChange(),
          PluralRule.ifMatches('grass').noChange(),
          PluralRule.ifMatches('hair').noChange(),
          PluralRule.ifMatches('mud').noChange(),
          PluralRule.ifMatches('moose').noChange(),
          PluralRule.ifMatches('series').noChange(),
          PluralRule.ifMatches('series').noChange(),
          PluralRule.ifMatches('sheep').noChange(),
          PluralRule.ifMatches('shrimp').noChange(),
          PluralRule.ifMatches('spacecraft').noChange(),
          PluralRule.ifMatches('species').noChange(),
          PluralRule.ifMatches('salmon').noChange(),
          PluralRule.ifMatches('swine').noChange(),
          PluralRule.ifMatches('trout').noChange(),
          PluralRule.ifMatches('quail').noChange(),

          // Plural Irregular Nouns
          PluralRule.ifMatches('alumna').replaceWith('alumnae'),
          PluralRule.ifMatches('bacillus').replaceWith('bacilli'),
          PluralRule.ifMatches('child').replaceWith('children'),
          PluralRule.ifMatches('die').replaceWith('dice'),
          PluralRule.ifMatches('foot').replaceWith('feet'),
          PluralRule.ifMatches('goose').replaceWith('geese'),
          PluralRule.ifMatches('louse').replaceWith('lice'),
          PluralRule.ifMatches('man').replaceWith('men'),
          PluralRule.ifMatches('minutia').replaceWith('minutiae'),
          PluralRule.ifMatches('mouse').replaceWith('mice'),
          PluralRule.ifMatches('ox').replaceWith('oxen'),
          PluralRule.ifMatches('person').replaceWith('people'),
          PluralRule.ifMatches('tooth').replaceWith('teeth'),
          PluralRule.ifMatches('woman').replaceWith('women'),

          // exceptions on replace -f with -ves
          PluralRule.ifMatches('belief').appendWith('s'),
          PluralRule.ifMatches('brief').appendWith('s'),
          PluralRule.ifMatches('chef').appendWith('s'),
          PluralRule.ifMatches('chief').appendWith('s'),
          PluralRule.ifMatches('cliff').appendWith('s'),
          PluralRule.ifMatches('oaf').appendWith('s'),
          PluralRule.ifMatches('roof').appendWith('s'),
          PluralRule.ifMatches('scuff').appendWith('s'),
          PluralRule.ifMatches('sniff').appendWith('s'),
          PluralRule.ifMatches('toff').appendWith('s'),

          // replace -f with -ves e.g. wolf=>wolves
          PluralRule.ifEndsWith('f').replaceSuffix('f', 'ves'),

          // replace -fe with -ves e.g. wife=>wives
          PluralRule.ifEndsWith('fe').replaceSuffix('fe', 'ves'),

          // replace -<consonant>y with -ies e.g. city=>cities
          PluralRule.ifMatchedRegexp(
                  _consonantExpression + 'y' + _endExpression)
              .replaceSuffix('y', 'ies'),

          // exceptions on replace -<consonant>o with -oes
          PluralRule.ifMatches('photo').replaceWith('photos'),
          PluralRule.ifMatches('piano').replaceWith('pianos'),
          PluralRule.ifMatches('halo').replaceWith('halos'),

          // replace -<consonant>o with -oes    e.g. potato=>potatoes
          PluralRule.ifMatchedRegexp(
                  _consonantExpression + 'o' + _endExpression)
              .appendWith('es'),

          // replace -is with -es  e.g. ellipsis=>ellipses
          PluralRule.ifEndsWith('is').replaceSuffix('is', 'es'),

          // replace -on with -a  e.g. criterion=>criteria
          PluralRule.ifEndsWith('on').replaceSuffix('on', 'a'),

          // replace -um with -a  e.g. datum=>data
          PluralRule.ifEndsWith('um').replaceSuffix('um', 'a'),

          // exception on replace -s with -ses
          PluralRule.ifMatches('alumnus').replaceWith('alumni'),
          PluralRule.ifMatches('cactus').replaceWith('cacti'),
          PluralRule.ifMatches('corpus').replaceWith('corpora'),
          PluralRule.ifMatches('fungus').replaceWith('fungi'),
          PluralRule.ifMatches('gas').replaceWith('gasses'),
          PluralRule.ifMatches('hippopotamus').replaceWith('hippopotamuses'),
          PluralRule.ifMatches('nucleus').replaceWith('nuclei'),
          PluralRule.ifMatches('stimulus').replaceWith('stimuli'),

          // replace -s with -ses e.g. bus=>buses
          PluralRule.ifEndsWith('s').appendWith('es'),

          // replace -ss with -sses e.g. truss=>trusses
          PluralRule.ifEndsWith('ss').appendWith('es'),

          // replace -sh with -shes e.g. marsh=>marshes
          PluralRule.ifEndsWith('sh').appendWith('es'),

          // replace -ch with -ches e.g. lunch=>lunches
          PluralRule.ifEndsWith('ch').appendWith('es'),

          // exceptions on replace -x with -xes
          PluralRule.ifMatches('appendix').replaceWith('appendices'),
          PluralRule.ifMatches('codex').replaceWith('codices'),

          // replace -x with -xes e.g. tax=>taxes
          PluralRule.ifEndsWith('x').appendWith('es'),

          // exceptions on replace -z with -zes
          PluralRule.ifMatches('fez').replaceWith('fezzes'),
          PluralRule.ifMatches('quiz').replaceWith('quizzes'),

          // replace -z with -zes e.g. blitz=>blitzes
          PluralRule.ifEndsWith('z').appendWith('es'),

          //none of the other rules applied so we assume we can just append an s
          PluralRule.appendSuffix('s'),
        ]);

  @override
  String convertToPluralNoun(String singularNoun) {
    String trimmedSingularNoun = singularNoun.trim();
    CaseType caseType = CaseTypes().findFor(trimmedSingularNoun);
    String normalizedSingularNoun = trimmedSingularNoun.toLowerCase();
    var rule = firstWhere((rule) => rule.appliesTo(normalizedSingularNoun));
    var pluralNoun = rule.convertToPluralNoun(normalizedSingularNoun);
    var casedPluralNoun = caseType.convert(pluralNoun);
    return casedPluralNoun;
  }
}
