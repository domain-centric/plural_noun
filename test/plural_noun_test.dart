import 'package:flutter_test/flutter_test.dart';
import 'package:plural_noun/plural_noun.dart';

void main() {
  final rules = PluralRules();

  group('Nouns that don’t change', () {
    test('buffalo=>buffalo', () {
      expect(rules.convertToPluralNoun('buffalo'), 'buffalo');
    });
    test('cod=>cod', () {
      expect(rules.convertToPluralNoun('cod'), 'cod');
    });
    test('deer=>deer', () {
      expect(rules.convertToPluralNoun('deer'), 'deer');
    });
    test('fish=>fish', () {
      expect(rules.convertToPluralNoun('fish'), 'fish');
    });
    test('hair=>hair', () {
      expect(rules.convertToPluralNoun('hair'), 'hair');
    });
    test('grass=>grass', () {
      expect(rules.convertToPluralNoun('grass'), 'grass');
    });
    test('moose=>moose', () {
      expect(rules.convertToPluralNoun('moose'), 'moose');
    });
    test('mud=>mud', () {
      expect(rules.convertToPluralNoun('mud'), 'mud');
    });
    test('series=>series', () {
      expect(rules.convertToPluralNoun('series'), 'series');
    });
    test('sheep=>sheep', () {
      expect(rules.convertToPluralNoun('sheep'), 'sheep');
    });
    test('shrimp=>shrimp', () {
      expect(rules.convertToPluralNoun('shrimp'), 'shrimp');
    });
    test('species=>species', () {
      expect(rules.convertToPluralNoun('species'), 'species');
    });
    test('swine=>swine', () {
      expect(rules.convertToPluralNoun('swine'), 'swine');
    });
    test('trout=>trout', () {
      expect(rules.convertToPluralNoun('trout'), 'trout');
    });
    test('quail=>quail', () {
      expect(rules.convertToPluralNoun('quail'), 'quail');
    });
    test('deer=>deer', () {
      expect(rules.convertToPluralNoun('deer'), 'deer');
    });
    test('fish=>fish', () {
      expect(rules.convertToPluralNoun('fish'), 'fish');
    });
    test('bison=>bison', () {
      expect(rules.convertToPluralNoun('bison'), 'bison');
    });
    test('elk=>elk', () {
      expect(rules.convertToPluralNoun('elk'), 'elk');
    });
    test('salmon=>salmon', () {
      expect(rules.convertToPluralNoun('salmon'), 'salmon');
    });
    test('swine=>swine', () {
      expect(rules.convertToPluralNoun('swine'), 'swine');
    });
    test('shrimp=>shrimp', () {
      expect(rules.convertToPluralNoun('shrimp'), 'shrimp');
    });
    test('bass=>bass', () {
      expect(rules.convertToPluralNoun('bass'), 'bass');
    });
    test('trout=>trout', () {
      expect(rules.convertToPluralNoun('trout'), 'trout');
    });
    test('aircraft=>aircraft', () {
      expect(rules.convertToPluralNoun('aircraft'), 'aircraft');
    });
    test('spacecraft=>spacecraft', () {
      expect(rules.convertToPluralNoun('spacecraft'), 'spacecraft');
    });
  });
  group('Plural Irregular Nouns', () {
    test('child=>children', () {
      expect(rules.convertToPluralNoun('child'), 'children');
    });
    test('die=>dice', () {
      expect(rules.convertToPluralNoun('die'), 'dice');
    });
    test('foot=>feet', () {
      expect(rules.convertToPluralNoun('foot'), 'feet');
    });
    test('goose=>geese', () {
      expect(rules.convertToPluralNoun('goose'), 'geese');
    });
    test('louse=>lice', () {
      expect(rules.convertToPluralNoun('louse'), 'lice');
    });
    test('man=>men', () {
      expect(rules.convertToPluralNoun('man'), 'men');
    });
    test('minutia=>minutiae', () {
      expect(rules.convertToPluralNoun('minutia'), 'minutiae');
    });
    test('mouse=>mice', () {
      expect(rules.convertToPluralNoun('mouse'), 'mice');
    });
    test('ox=>oxen', () {
      expect(rules.convertToPluralNoun('ox'), 'oxen');
    });
    test('person=>people', () {
      expect(rules.convertToPluralNoun('person'), 'people');
    });
    test('tooth=>teeth', () {
      expect(rules.convertToPluralNoun('tooth'), 'teeth');
    });
    test('woman=>women', () {
      expect(rules.convertToPluralNoun('woman'), 'women');
    });
  });
  group('Exceptions on replace -f with -ves', () {});
  group('Replace -f with -ves', () {
    test('wolf=>wolves', () {
      expect(rules.convertToPluralNoun('wolf'), 'wolves');
    });
  });
  group('Replace -fe with -ves', () {
    test('wife=>wives', () {
      expect(rules.convertToPluralNoun('wife'), 'wives');
    });
  });
  group('Replace -<consonant>y with -ies', () {
    test('city=>cities', () {
      expect(rules.convertToPluralNoun('city'), 'cities');
    });
  });
  group('Exceptions on replace -<consonant>o with -oes', () {
    test('photo=>photos', () {
      expect(rules.convertToPluralNoun('photo'), 'photos');
    });
    test('piano=>pianos', () {
      expect(rules.convertToPluralNoun('piano'), 'pianos');
    });
    test('halo=>halos', () {
      expect(rules.convertToPluralNoun('halo'), 'halos');
    });
  });
  group('Replace -<consonant>o with -oes', () {
    test('potato=>potatoes', () {
      expect(rules.convertToPluralNoun('potato'), 'potatoes');
    });
  });
  group('Replace -is with -es', () {
    test('ellipsis=>ellipses', () {
      expect(rules.convertToPluralNoun('ellipsis'), 'ellipses');
    });
    test('axis=>axes', () {
      expect(rules.convertToPluralNoun('axis'), 'axes');
    });
    test('analysis=>analyses', () {
      expect(rules.convertToPluralNoun('analysis'), 'analyses');
    });
    test('crisis=>crises', () {
      expect(rules.convertToPluralNoun('crisis'), 'crises');
    });
    test('thesis=>theses', () {
      expect(rules.convertToPluralNoun('thesis'), 'theses');
    });
  });
  group('Replace -on with -a', () {
    test('criterion=>criteria', () {
      expect(rules.convertToPluralNoun('criterion'), 'criteria');
    });
    test('phenomenon=>phenomena', () {
      expect(rules.convertToPluralNoun('phenomenon'), 'phenomena');
    });
  });
  group('Replace -um with -a', () {
    test('criterion=>criteria', () {
      expect(rules.convertToPluralNoun('criterion'), 'criteria');
    });
    test('datum=>data', () {
      expect(rules.convertToPluralNoun('datum'), 'data');
    });
    test('memorandum=>memoranda', () {
      expect(rules.convertToPluralNoun('memorandum'), 'memoranda');
    });
    test('bacterium=>bacteria', () {
      expect(rules.convertToPluralNoun('bacterium'), 'bacteria');
    });
    test('stratum=>strata', () {
      expect(rules.convertToPluralNoun('stratum'), 'strata');
    });
    test('curriculum=>curricula', () {
      expect(rules.convertToPluralNoun('curriculum'), 'curricula');
    });
  });
  group('Exception on replace -s with -ses', () {
    test('alumnus=>alumni', () {
      expect(rules.convertToPluralNoun('alumnus'), 'alumni');
    });
    test('cactus=>cacti', () {
      expect(rules.convertToPluralNoun('cactus'), 'cacti');
    });
    test('corpus=>corpora', () {
      expect(rules.convertToPluralNoun('corpus'), 'corpora');
    });
    test('fungus=>fungi', () {
      expect(rules.convertToPluralNoun('fungus'), 'fungi');
    });
    test('gas=>gasses', () {
      expect(rules.convertToPluralNoun('gas'), 'gasses');
    });
    test('hippopotamus=>hippopotamuses', () {
      expect(rules.convertToPluralNoun('hippopotamus'), 'hippopotamuses');
    });
    test('nucleus=>nuclei', () {
      expect(rules.convertToPluralNoun('nucleus'), 'nuclei');
    });
    test('stimulus=>stimuli', () {
      expect(rules.convertToPluralNoun('stimulus'), 'stimuli');
    });
  });
  group('Replace -s with -ses', () {
    test('bus=>buses', () {
      expect(rules.convertToPluralNoun('bus'), 'buses');
    });
    test('syllabus=>syllabuses', () {
      expect(rules.convertToPluralNoun('syllabus'), 'syllabuses');
    });
  });
  group('Replace -ss with -sses', () {
    test('truss=>trusses', () {
      expect(rules.convertToPluralNoun('truss'), 'trusses');
    });
  });
  group('Replace -sh with -shes', () {
    test('marsh=>marshes', () {
      expect(rules.convertToPluralNoun('marsh'), 'marshes');
    });
  });
  group('Replace -ch with -ches', () {
    test('lunch=>lunches', () {
      expect(rules.convertToPluralNoun('lunch'), 'lunches');
    });
  });
  group('Exceptions on replace -x with -xes', () {
    test('appendix=>appendices', () {
      expect(rules.convertToPluralNoun('appendix'), 'appendices');
    });
    test('codex=>codices', () {
      expect(rules.convertToPluralNoun('codex'), 'codices');
    });
  });
  group('Replace -x with -xes', () {
    test('tax=>taxes', () {
      expect(rules.convertToPluralNoun('tax'), 'taxes');
    });
  });
  group('Exceptions on replace -z with -zes', () {
    test('fez=>fezzes', () {
      expect(rules.convertToPluralNoun('fez'), 'fezzes');
    });
    test('quiz=>quizzes', () {
      expect(rules.convertToPluralNoun('quiz'), 'quizzes');
    });
  });
  group('Replace -z with -zes', () {
    test('blitz=>blitzes', () {
      expect(rules.convertToPluralNoun('blitz'), 'blitzes');
    });
  });
  group('Otherwise add s', () {
    test('car=>cars', () {
      expect(rules.convertToPluralNoun('car'), 'cars');
    });
    test('dog=>dogs', () {
      expect(rules.convertToPluralNoun('dog'), 'dogs');
    });
    test('book=>books', () {
      expect(rules.convertToPluralNoun('book'), 'books');
    });
    test('apple=>apples', () {
      expect(rules.convertToPluralNoun('apple'), 'apples');
    });
    test('house=>houses', () {
      expect(rules.convertToPluralNoun('house'), 'houses');
    });
  });
  group('Random tests', () {
    test('addendum=>addenda or addendums', () {
      expect(
          ['addenda', 'addendums']
              .contains(rules.convertToPluralNoun('addendum')),
          true);
    });
    test('aircraft=>aircraft', () {
      expect(rules.convertToPluralNoun('aircraft'), 'aircraft');
    });
    test('alumna=>alumnae', () {
      expect(rules.convertToPluralNoun('alumna'), 'alumnae');
    });
    test('alumnus=>alumni', () {
      expect(rules.convertToPluralNoun('alumnus'), 'alumni');
    });
    test('analysis=>analyses', () {
      expect(rules.convertToPluralNoun('analysis'), 'analyses');
    });
    test('antenna=>antennae or antennas', () {
      expect(
          ['antennae', 'antennas']
              .contains(rules.convertToPluralNoun('antenna')),
          true);
    });
    test('antithesis=>antitheses', () {
      expect(rules.convertToPluralNoun('antithesis'), 'antitheses');
    });
    test('apex=>apices or apexes', () {
      expect(['apices', 'apexes'].contains(rules.convertToPluralNoun('apex')),
          true);
    });
    test('appendix=>appendices or appendixes', () {
      expect(
          ['appendices', 'appendixes']
              .contains(rules.convertToPluralNoun('appendix')),
          true);
    });
    test('axis=>axes', () {
      expect(rules.convertToPluralNoun('axis'), 'axes');
    });
    test('bacillus=>bacilli', () {
      expect(rules.convertToPluralNoun('bacillus'), 'bacilli');
    });
    test('bacterium=>bacteria', () {
      expect(rules.convertToPluralNoun('bacterium'), 'bacteria');
    });
    test('basis=>bases', () {
      expect(rules.convertToPluralNoun('basis'), 'bases');
    });
    test('beau=>beaux or beaus', () {
      expect(
          ['beaux', 'beaus'].contains(rules.convertToPluralNoun('beau')), true);
    });
    test('bison=>bison', () {
      expect(rules.convertToPluralNoun('bison'), 'bison');
    });
    test('bureau=>bureaux or bureaus', () {
      expect(
          ['bureaux', 'bureaus'].contains(rules.convertToPluralNoun('bureau')),
          true);
    });
    test('cactus=>cacti or cactus or cactuses', () {
      expect(
          ['cacti', 'cactus', 'cactuses']
              .contains(rules.convertToPluralNoun('cactus')),
          true);
    });
    test('château=>châteaux or châteaus', () {
      expect(
          ['châteaux', 'châteaus']
              .contains(rules.convertToPluralNoun('château')),
          true);
    });
    test('child=>children', () {
      expect(rules.convertToPluralNoun('child'), 'children');
    });
    test('codex=>codices', () {
      expect(rules.convertToPluralNoun('codex'), 'codices');
    });
    test('concert=>concerts', () {
      expect(rules.convertToPluralNoun('concert'), 'concerts');
    });
    test('crisis=>crises', () {
      expect(rules.convertToPluralNoun('crisis'), 'crises');
    });
    test('criterion=>criteria or criterions', () {
      expect(
          ['criteria', 'criterions']
              .contains(rules.convertToPluralNoun('criterion')),
          true);
    });
    test('curriculum=>curricula or curriculums', () {
      expect(
          ['curricula', 'curriculums']
              .contains(rules.convertToPluralNoun('curriculum')),
          true);
    });
    test('datum=>data', () {
      expect(rules.convertToPluralNoun('datum'), 'data');
    });
    test('deer=>deer or deers', () {
      expect(
          ['deer', 'deers'].contains(rules.convertToPluralNoun('deer')), true);
    });
    test('diagnosis=>diagnoses', () {
      expect(rules.convertToPluralNoun('diagnosis'), 'diagnoses');
    });
    test('die=>dice or dies', () {
      expect(['dice', 'dies'].contains(rules.convertToPluralNoun('die')), true);
    });
    test('dwarf=>dwarves or dwarfs', () {
      expect(['dwarves', 'dwarfs'].contains(rules.convertToPluralNoun('dwarf')),
          true);
    });
    test('ellipsis=>ellipses', () {
      expect(rules.convertToPluralNoun('ellipsis'), 'ellipses');
    });
    test('erratum=>errata', () {
      expect(rules.convertToPluralNoun('erratum'), 'errata');
    });
    test('fez=>fezzes or fezes', () {
      expect(
          ['fezzes', 'fezes'].contains(rules.convertToPluralNoun('fez')), true);
    });
    test('fish=>fish or fishes', () {
      expect(
          ['fish', 'fishes'].contains(rules.convertToPluralNoun('fish')), true);
    });
    test('focus=>foci or focuses', () {
      expect(['foci', 'focuses'].contains(rules.convertToPluralNoun('focus')),
          true);
    });
    test('foot=>feet or foot', () {
      expect(
          ['feet', 'foot'].contains(rules.convertToPluralNoun('foot')), true);
    });
    test('formula=>formulae or formulas', () {
      expect(
          ['formulae', 'formulas']
              .contains(rules.convertToPluralNoun('formula')),
          true);
    });
    test('fungus=>fungi or funguses', () {
      expect(
          ['fungi', 'funguses'].contains(rules.convertToPluralNoun('fungus')),
          true);
    });
    test('genus=>genera or genuses', () {
      expect(['genera', 'genuses'].contains(rules.convertToPluralNoun('genus')),
          true);
    });
    test('goose=>geese', () {
      expect(rules.convertToPluralNoun('goose'), 'geese');
    });
    test('grouse=>grouse or grouses', () {
      expect(
          ['grouse', 'grouses'].contains(rules.convertToPluralNoun('grouse')),
          true);
    });
    test('half=>halves', () {
      expect(rules.convertToPluralNoun('half'), 'halves');
    });
    test('hoof=>hooves or hoofs', () {
      expect(['hooves', 'hoofs'].contains(rules.convertToPluralNoun('hoof')),
          true);
    });
    test('hypothesis=>hypotheses', () {
      expect(rules.convertToPluralNoun('hypothesis'), 'hypotheses');
    });
    test('index=>indices or indexes', () {
      expect(
          ['indices', 'indexes'].contains(rules.convertToPluralNoun('index')),
          true);
    });
    test('larva=>larvae or larvas', () {
      expect(['larvae', 'larvas'].contains(rules.convertToPluralNoun('larva')),
          true);
    });
    test('loaf=>loaves', () {
      expect(rules.convertToPluralNoun('loaf'), 'loaves');
    });
    test('man=>men', () {
      expect(rules.convertToPluralNoun('man'), 'men');
    });
    test('matrix=>matrices or matrixes', () {
      expect(
          ['matrices', 'matrixes']
              .contains(rules.convertToPluralNoun('matrix')),
          true);
    });
    test('medium=>media or mediums', () {
      expect(['media', 'mediums'].contains(rules.convertToPluralNoun('medium')),
          true);
    });
    test('memorandum=>memoranda or memorandums', () {
      expect(
          ['memoranda', 'memorandums']
              .contains(rules.convertToPluralNoun('memorandum')),
          true);
    });
    test('moose=>moose', () {
      expect(rules.convertToPluralNoun('moose'), 'moose');
    });
    test('mouse=>mice', () {
      expect(rules.convertToPluralNoun('mouse'), 'mice');
    });
    test('nebula=>nebulae or nebulas', () {
      expect(
          ['nebulae', 'nebulas'].contains(rules.convertToPluralNoun('nebula')),
          true);
    });
    test('nucleus=>nuclei or nucleuses', () {
      expect(
          ['nuclei', 'nucleuses']
              .contains(rules.convertToPluralNoun('nucleus')),
          true);
    });
    test('oasis=>oases', () {
      expect(rules.convertToPluralNoun('oasis'), 'oases');
    });
    test('offspring=>offspring or offsprings', () {
      expect(
          ['offspring', 'offsprings']
              .contains(rules.convertToPluralNoun('offspring')),
          true);
    });
    test('opus=>opera or opuses', () {
      expect(['opera', 'opuses'].contains(rules.convertToPluralNoun('opus')),
          true);
    });
    test('ovum=>ova', () {
      expect(rules.convertToPluralNoun('ovum'), 'ova');
    });
    test('ox=>oxen or ox', () {
      expect(['oxen', 'ox'].contains(rules.convertToPluralNoun('ox')), true);
    });
    test('parenthesis=>parentheses', () {
      expect(rules.convertToPluralNoun('parenthesis'), 'parentheses');
    });
    test('phenomenon=>phenomena or phenomenons', () {
      expect(
          ['phenomena', 'phenomenons']
              .contains(rules.convertToPluralNoun('phenomenon')),
          true);
    });
    test('phylum=>phyla', () {
      expect(rules.convertToPluralNoun('phylum'), 'phyla');
    });
    test('quiz=>quizzes', () {
      expect(rules.convertToPluralNoun('quiz'), 'quizzes');
    });
    test('radius=>radii or radiuses', () {
      expect(
          ['radii', 'radiuses'].contains(rules.convertToPluralNoun('radius')),
          true);
    });
    test('referendum=>referenda or referendums', () {
      expect(
          ['referenda', 'referendums']
              .contains(rules.convertToPluralNoun('referendum')),
          true);
    });
    test('salmon=>salmon or salmons', () {
      expect(
          ['salmon', 'salmons'].contains(rules.convertToPluralNoun('salmon')),
          true);
    });
    test('scarf=>scarves or scarfs', () {
      expect(['scarves', 'scarfs'].contains(rules.convertToPluralNoun('scarf')),
          true);
    });
    test('self=>selves', () {
      expect(rules.convertToPluralNoun('self'), 'selves');
    });
    test('series=>series', () {
      expect(rules.convertToPluralNoun('series'), 'series');
    });
    test('sheep=>sheep', () {
      expect(rules.convertToPluralNoun('sheep'), 'sheep');
    });
    test('shrimp=>shrimp or shrimps', () {
      expect(
          ['shrimp', 'shrimps'].contains(rules.convertToPluralNoun('shrimp')),
          true);
    });
    test('species=>species', () {
      expect(rules.convertToPluralNoun('species'), 'species');
    });
    test('stratum=>strata', () {
      expect(rules.convertToPluralNoun('stratum'), 'strata');
    });
    test('swine=>swine', () {
      expect(rules.convertToPluralNoun('swine'), 'swine');
    });
    test('syllabus=>syllabi or syllabuses', () {
      expect(
          ['syllabi', 'syllabuses']
              .contains(rules.convertToPluralNoun('syllabus')),
          true);
    });
    test('symposium=>symposia or symposiums', () {
      expect(
          ['symposia', 'symposiums']
              .contains(rules.convertToPluralNoun('symposium')),
          true);
    });
    test('synopsis=>synopses', () {
      expect(rules.convertToPluralNoun('synopsis'), 'synopses');
    });
    test('tableau=>tableaux or tableaus', () {
      expect(
          ['tableaux', 'tableaus']
              .contains(rules.convertToPluralNoun('tableau')),
          true);
    });
    test('thesis=>theses', () {
      expect(rules.convertToPluralNoun('thesis'), 'theses');
    });
    test('thief=>thieves', () {
      expect(rules.convertToPluralNoun('thief'), 'thieves');
    });
    test('tooth=>teeth', () {
      expect(rules.convertToPluralNoun('tooth'), 'teeth');
    });
    test('trout=>trout or trouts', () {
      expect(['trout', 'trouts'].contains(rules.convertToPluralNoun('trout')),
          true);
    });
    test('tuna=>tuna or tunas', () {
      expect(
          ['tuna', 'tunas'].contains(rules.convertToPluralNoun('tuna')), true);
    });
    test('vertebra=>vertebrae or vertebras', () {
      expect(
          ['vertebrae', 'vertebras']
              .contains(rules.convertToPluralNoun('vertebra')),
          true);
    });
    test('vertex=>vertices or vertexes', () {
      expect(
          ['vertices', 'vertexes']
              .contains(rules.convertToPluralNoun('vertex')),
          true);
    });
    test('vortex=>vortices or vortexes', () {
      expect(
          ['vortices', 'vortexes']
              .contains(rules.convertToPluralNoun('vortex')),
          true);
    });
    test('wharf=>wharves or wharfs', () {
      expect(['wharves', 'wharfs'].contains(rules.convertToPluralNoun('wharf')),
          true);
    });
    test('wife=>wives', () {
      expect(rules.convertToPluralNoun('wife'), 'wives');
    });
    test('wolf=>wolves', () {
      expect(rules.convertToPluralNoun('wolf'), 'wolves');
    });
    test('woman=>women', () {
      expect(rules.convertToPluralNoun('woman'), 'women');
    });
  });

  group('Test letter case',() {
    test('Starts with lower case', () {
      expect(PluralRules().convertToPluralNoun('mouse'), 'mice');
    });
    test('Starts with upper case', () {
      expect(PluralRules().convertToPluralNoun('Car'), 'Cars');
    });
    test('All upper case', () {
      expect(PluralRules().convertToPluralNoun('TAX'), 'TAXES');
    });
  });
}
