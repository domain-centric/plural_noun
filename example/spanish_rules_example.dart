// ignore_for_file: camel_case_types
import 'package:plural_noun/plural_noun.dart';

final pluralEngine = PluralEngine(SpanishPluralRuleSet());

void main() {
  print(pluralEngine.convertToPluralNoun('casa'));
  //prints casas

  print(pluralEngine.convertToPluralNoun('papel'));
  //prints papeles

  print(pluralEngine.convertToPluralNoun('Luz'));
  //prints Luces

  print(pluralEngine.convertToPluralNoun('Canción'));
  //prints Canciones

  print(pluralEngine.convertToPluralNoun('ABRELATAS'));
  //prints ABRELATAS
}

/// Crude example
class SpanishPluralRuleSet extends PluralRuleSet {
  SpanishPluralRuleSet()
    : super([
        SpanishNounsThatDoNotChange(),
        Replace_ion_with_ionesAndRemoveAccents(),
        Replace_z_with_ces(),
        // If none of the rules above apply we assume it is one of the following
        Replace_vowel_with_vowelS(),
        Replace_consonant_with_consonantEs(),
      ]);
}

class Replace_ion_with_ionesAndRemoveAccents implements PluralRule {
  @override
  bool appliesTo(String singularNoun) =>
      removeAccents(singularNoun).endsWith('ion');

  @override
  String convertToPluralNoun(String singularNoun) =>
      '${removeAccents(singularNoun)}es';

  String removeAccents(String input) {
    const Map<String, String> accentMap = {
      'á': 'a',
      'é': 'e',
      'í': 'i',
      'ó': 'o',
      'ú': 'u',
      'Á': 'A',
      'É': 'E',
      'Í': 'I',
      'Ó': 'O',
      'Ú': 'U',
      'ñ': 'n',
      'Ñ': 'N',
      'ü': 'u',
      'Ü': 'U',
    };

    return input.split('').map((char) => accentMap[char] ?? char).join();
  }
}

class SpanishNounsThatDoNotChange extends NounsThatDoNotChange {
  SpanishNounsThatDoNotChange()
    : super(['lunes', 'tórax', 'abrelatas', 'paraguas']);
}

/// Replace -z with -ces e.g. luz=>luces (light => lights)
class Replace_z_with_ces extends RuleWithExceptions {
  Replace_z_with_ces()
    : super(
        baseRule: PluralRule.ifEndsWith('z').replaceSuffix('z', 'ces'),
        exceptions: {
          // Add exceptions here if needed
        },
      );
}

// replace -vowel with -vowel+s e.g. case => casas (house => houses)
class Replace_vowel_with_vowelS extends RuleWithExceptions {
  Replace_vowel_with_vowelS()
    : super(
        baseRule: PluralRule.ifMatchedRegexp(
          vowelExpression,
        ).appendWith('s'),
        exceptions: {
          // Add exceptions here if needed
        },
      );
}

// replace -consonant with -consonant+es e.g. papel => papeles (paper => papers)
class Replace_consonant_with_consonantEs extends RuleWithExceptions {
  Replace_consonant_with_consonantEs()
    : super(
        baseRule: PluralRule.ifMatchedRegexp(
          consonantExpression,
        ).appendWith('es'),
        exceptions: {
          // Add exceptions here if needed
        },
      );
}
