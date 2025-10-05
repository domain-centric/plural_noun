// ignore_for_file: camel_case_types

import 'package:plural_noun/plural_noun.dart';

/// These rules are based on https://www.grammarly.com/blog/plural-nouns/
class EnglishPluralRuleSet extends PluralRuleSet {
  EnglishPluralRuleSet()
    : super([
        EnglishNounsThatDoNotChange(),
        EnglishIrregularNouns(),
        Replace_f_with_ves(),
        Replace_fe_with_ves(),
        Replace_consonantY_with_ies(),
        Replace_consonantO_with_oes(),
        Replace_isWith_es(),
        Replace_on_with_a(),
        Replace_um_with_a(),
        Replace_ss_with_sses(),
        Replace_s_with_ses(),
        Replace_sh_with_shes(),
        Replace_ch_with_ches(),
        Replace_x_with_xes(),
        Replace_z_with_zes(),
        // If none of the rules above applies we assume we can append s
        AppendSuffix('s'),
      ]);
}

class EnglishNounsThatDoNotChange extends NounsThatDoNotChange {
  EnglishNounsThatDoNotChange()
    : super([
        'aircraft',
        'bass',
        'besh',
        'bison',
        'buffalo',
        'cod',
        'data',
        'deer',
        'elk',
        'fish',
        'grass',
        'hair',
        'info',
        'information',
        'mud',
        'moose',
        'relish',
        'series',
        'series',
        'sheep',
        'shrimp',
        'spacecraft',
        'species',
        'salmon',
        'swine',
        'trout',
        'quail',
      ]);
}

class EnglishIrregularNouns extends IrregularNouns {
  EnglishIrregularNouns()
    : super({
        'alumna': 'alumnae',
        'analysis': 'analyses',
        'antenna': 'antennae',
        'appendix': 'appendices',
        'axis': 'axes',
        'bacillus': 'bacilli',
        'bacterium': 'bacteria',
        'bureau': 'bureaux',
        'cactus': 'cacti',
        'child': 'children',
        'crisis': 'crises',
        'criterion': 'criteria',
        'curriculum': 'curricula',
        'datum': 'data',
        'diagnosis': 'diagnoses',
        'die': 'dice',
        'ellipsis': 'ellipses',
        'focus': 'foci',
        'foot': 'feet',
        'formula': 'formulae',
        'fungus': 'fungi',
        'genus': 'genera',
        'goose': 'geese',
        'hypothesis': 'hypotheses',
        'index': 'indices',
        'louse': 'lice',
        'man': 'men',
        'matrix': 'matrices',
        'medium': 'media',
        'memorandum': 'memoranda',
        'minutia': 'minutiae',
        'mouse': 'mice',
        'nucleus': 'nuclei',
        'octopus': 'octopuses',
        'ox': 'oxen',
        'parenthesis': 'parentheses',
        'person': 'people',
        'phenomenon': 'phenomena',
        'radius': 'radii',
        'status': 'statuses',
        'stimulus': 'stimuli',
        'stratum': 'strata',
        'tableau': 'tableaux',
        'thesis': 'theses',
        'tooth': 'teeth',
        'vertebra': 'vertebrae',
        'vita': 'vitae',
        'woman': 'women',
      });
}

/// Replace -f with -ves e.g. wolf=>wolves
class Replace_f_with_ves extends RuleWithExceptions {
  Replace_f_with_ves()
    : super(
        baseRule: PluralRule.ifEndsWith('f').replaceSuffix('f', 'ves'),
        exceptions: {
          'belief': 'beliefs',
          'brief': 'briefs',
          'chef': 'chefs',
          'chief': 'chiefs',
          'cliff': 'cliffs',
          'oaf': 'oafs',
          'roof': 'roofs',
          'scuff': 'scuffs',
          'sniff': 'sniffs',
          'toff': 'toffs',
        },
      );
}

// Replace -fe with -ves e.g. wife=>wives
class Replace_fe_with_ves extends RuleWithExceptions {
  Replace_fe_with_ves()
    : super(
        baseRule: PluralRule.ifEndsWith('fe').replaceSuffix('fe', 'ves'),
        exceptions: {'safe': 'safes', 'giraffe': 'giraffes', 'cafe': 'cafes'},
      );
}

// replace -<consonant>y with -ies e.g. city=>cities
class Replace_consonantY_with_ies extends RuleWithExceptions {
  Replace_consonantY_with_ies()
    : super(
        baseRule: PluralRule.ifMatchedRegexp(
          '${consonantExpression}y$endExpression',
        ).replaceSuffix('y', 'ies'),
        exceptions: {
          // Add exceptions here if needed
        },
      );
}

/// Replace -consonant+o with -oes e.g. potato => potatoes
class Replace_consonantO_with_oes extends RuleWithExceptions {
  Replace_consonantO_with_oes()
    : super(
        baseRule: PluralRule.ifMatchedRegexp(
          '${consonantExpression}o$endExpression',
        ).appendWith('es'),
        exceptions: {
          'albino': 'albinos',
          'avocado': 'avocados',
          'casino': 'casinos',
          'cello': 'cellos',
          'dynamo': 'dynamos',
          'halo': 'halos',
          'kimono': 'kimonos',
          'kilo': 'kilos',
          'logo': 'logos',
          'mango': 'mangos',
          'memo': 'memos',
          'piano': 'pianos',
          'photo': 'photos',
          'pro': 'pros',
          'radio': 'radios',
          'solo': 'solos',
          'taco': 'tacos',
          'tornado': 'tornados',
          'video': 'videos',
          'volcano': 'volcanos',
          'zero': 'zeros',
        },
      );
}

// Replace -is with -es  e.g. ellipsis=>ellipses
class Replace_isWith_es extends RuleWithExceptions {
  Replace_isWith_es()
    : super(
        baseRule: PluralRule.ifEndsWith('is').replaceSuffix('is', 'es'),
        exceptions: {
          // Add exceptions here if needed
        },
      );
}

// Replace -on with -a e.g. criterion=>criteria
class Replace_on_with_a extends RuleWithExceptions {
  Replace_on_with_a()
    : super(
        baseRule: PluralRule.ifEndsWith('on').replaceSuffix('on', 'a'),
        exceptions: {
          'bacon': 'bacons',
          'cannon': 'cannons',
          'champion': 'champions',
          'configuration': 'configurations',
          'lemon': 'lemons',
          'melon': 'melons',
          'neon': 'neons',
          'onion': 'onions',
          'pavilion': 'pavilions',
          'salmon': 'salmons',
          'scion': 'scions',
          'wagon': 'wagons',
        },
      );
}

// Replace -um with -a e.g. datum=>data
class Replace_um_with_a extends RuleWithExceptions {
  Replace_um_with_a()
    : super(
        baseRule: PluralRule.ifEndsWith('um').replaceSuffix('um', 'a'),
        exceptions: {
          'album': 'albums',
          'forum': 'forums',
          'maximum': 'maximums',
          'minimum': 'minimums',
          'momentum': 'momentums',
          'museum': 'museums',
          'platinum': 'platinums',
          'premium': 'premiums',
          'quantum': 'quantums',
          'serum': 'serums',
          'spectrum': 'spectrums',
          'stadium': 'stadiums',
          'telegram': 'telegrams',
          'triumph': 'triumphs',
          'vacuum': 'vacuums',
        },
      );
}

// replace -ss with -sses e.g. truss=>trusses
class Replace_ss_with_sses extends RuleWithExceptions {
  Replace_ss_with_sses()
    : super(
        baseRule: PluralRule.ifEndsWith('ss').appendWith('es'),
        exceptions: {
          // Add exceptions here if needed
        },
      );
}

// Replace -s with -ses, e.g. bus=> buses
class Replace_s_with_ses extends RuleWithExceptions {
  Replace_s_with_ses()
    : super(
        baseRule: PluralRule.ifEndsWith('s').appendWith('es'),
        exceptions: {
          'alumnus': 'alumni',
          'cactus': 'cacti',
          'corpus': 'corpora',
          'fungus': 'fungi',
          'gas': 'gasses',
          'hippopotamus': 'hippopotamuses',
          'nucleus': 'nuclei',
          'stimulus': 'stimuli',
        },
      );
}

// replace -sh with -shes e.g. marsh=>marshes
class Replace_sh_with_shes extends RuleWithExceptions {
  Replace_sh_with_shes()
    : super(
        baseRule: PluralRule.ifEndsWith('sh').appendWith('es'),
        exceptions: {
          // Add exceptions here if needed
        },
      );
}

// replace -ch with -ches e.g. lunch=>lunches
class Replace_ch_with_ches extends RuleWithExceptions {
  Replace_ch_with_ches()
    : super(
        baseRule: PluralRule.ifEndsWith('ch').appendWith('es'),
        exceptions: {
          'stomach': 'stomachs',
          'epoch': 'epochs',
          'monarch': 'monarchs',
          'patriarch': 'patriarchs',
          'matriarch': 'matriarchs',
        },
      );
}

// Replace -x with -xes, e.g. box=> boxes
class Replace_x_with_xes extends RuleWithExceptions {
  Replace_x_with_xes()
    : super(
        baseRule: PluralRule.ifEndsWith('x').appendWith('es'),
        exceptions: {'appendix': 'appendices', 'codex': 'codices'},
      );
}

// Replace -z with -zes e.g. blitz=>blitzes
class Replace_z_with_zes extends RuleWithExceptions {
  Replace_z_with_zes()
    : super(
        baseRule: PluralRule.ifEndsWith('z').appendWith('es'),
        exceptions: {'fez': 'fezzes', 'quiz': 'quizzes'},
      );
}
