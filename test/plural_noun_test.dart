import 'package:plural_noun/plural_noun.dart';
import 'package:test/test.dart';

void main() {
  final pluralEngine = PluralEngine();

  group('Nouns that don’t change', () {
    test('buffalo=>buffalo', () {
      expect(pluralEngine.convertToPluralNoun('buffalo'), 'buffalo');
    });
    test('cod=>cod', () {
      expect(pluralEngine.convertToPluralNoun('cod'), 'cod');
    });
    test('deer=>deer', () {
      expect(pluralEngine.convertToPluralNoun('deer'), 'deer');
    });
    test('fish=>fish', () {
      expect(pluralEngine.convertToPluralNoun('fish'), 'fish');
    });
    test('hair=>hair', () {
      expect(pluralEngine.convertToPluralNoun('hair'), 'hair');
    });
    test('grass=>grass', () {
      expect(pluralEngine.convertToPluralNoun('grass'), 'grass');
    });
    test('moose=>moose', () {
      expect(pluralEngine.convertToPluralNoun('moose'), 'moose');
    });
    test('mud=>mud', () {
      expect(pluralEngine.convertToPluralNoun('mud'), 'mud');
    });
    test('series=>series', () {
      expect(pluralEngine.convertToPluralNoun('series'), 'series');
    });
    test('sheep=>sheep', () {
      expect(pluralEngine.convertToPluralNoun('sheep'), 'sheep');
    });
    test('shrimp=>shrimp', () {
      expect(pluralEngine.convertToPluralNoun('shrimp'), 'shrimp');
    });
    test('species=>species', () {
      expect(pluralEngine.convertToPluralNoun('species'), 'species');
    });
    test('swine=>swine', () {
      expect(pluralEngine.convertToPluralNoun('swine'), 'swine');
    });
    test('trout=>trout', () {
      expect(pluralEngine.convertToPluralNoun('trout'), 'trout');
    });
    test('quail=>quail', () {
      expect(pluralEngine.convertToPluralNoun('quail'), 'quail');
    });
    test('deer=>deer', () {
      expect(pluralEngine.convertToPluralNoun('deer'), 'deer');
    });
    test('fish=>fish', () {
      expect(pluralEngine.convertToPluralNoun('fish'), 'fish');
    });
    test('bison=>bison', () {
      expect(pluralEngine.convertToPluralNoun('bison'), 'bison');
    });
    test('elk=>elk', () {
      expect(pluralEngine.convertToPluralNoun('elk'), 'elk');
    });
    test('salmon=>salmon', () {
      expect(pluralEngine.convertToPluralNoun('salmon'), 'salmon');
    });
    test('swine=>swine', () {
      expect(pluralEngine.convertToPluralNoun('swine'), 'swine');
    });
    test('shrimp=>shrimp', () {
      expect(pluralEngine.convertToPluralNoun('shrimp'), 'shrimp');
    });
    test('bass=>bass', () {
      expect(pluralEngine.convertToPluralNoun('bass'), 'bass');
    });
    test('trout=>trout', () {
      expect(pluralEngine.convertToPluralNoun('trout'), 'trout');
    });
    test('aircraft=>aircraft', () {
      expect(pluralEngine.convertToPluralNoun('aircraft'), 'aircraft');
    });
    test('spacecraft=>spacecraft', () {
      expect(pluralEngine.convertToPluralNoun('spacecraft'), 'spacecraft');
    });
  });
  group('Plural Irregular Nouns', () {
    test('child=>children', () {
      expect(pluralEngine.convertToPluralNoun('child'), 'children');
    });
    test('die=>dice', () {
      expect(pluralEngine.convertToPluralNoun('die'), 'dice');
    });
    test('foot=>feet', () {
      expect(pluralEngine.convertToPluralNoun('foot'), 'feet');
    });
    test('goose=>geese', () {
      expect(pluralEngine.convertToPluralNoun('goose'), 'geese');
    });
    test('louse=>lice', () {
      expect(pluralEngine.convertToPluralNoun('louse'), 'lice');
    });
    test('man=>men', () {
      expect(pluralEngine.convertToPluralNoun('man'), 'men');
    });
    test('minutia=>minutiae', () {
      expect(pluralEngine.convertToPluralNoun('minutia'), 'minutiae');
    });
    test('mouse=>mice', () {
      expect(pluralEngine.convertToPluralNoun('mouse'), 'mice');
    });
    test('ox=>oxen', () {
      expect(pluralEngine.convertToPluralNoun('ox'), 'oxen');
    });
    test('person=>people', () {
      expect(pluralEngine.convertToPluralNoun('person'), 'people');
    });
    test('tooth=>teeth', () {
      expect(pluralEngine.convertToPluralNoun('tooth'), 'teeth');
    });
    test('woman=>women', () {
      expect(pluralEngine.convertToPluralNoun('woman'), 'women');
    });
  });
  group('Exceptions on replace -f with -ves', () {});
  group('Replace -f with -ves', () {
    test('wolf=>wolves', () {
      expect(pluralEngine.convertToPluralNoun('wolf'), 'wolves');
    });
  });
  group('Replace -fe with -ves', () {
    test('wife=>wives', () {
      expect(pluralEngine.convertToPluralNoun('wife'), 'wives');
    });
  });
  group('Replace -<consonant>y with -ies', () {
    test('city=>cities', () {
      expect(pluralEngine.convertToPluralNoun('city'), 'cities');
    });
  });
  group('Exceptions on replace -<consonant>o with -oes', () {
    test('photo=>photos', () {
      expect(pluralEngine.convertToPluralNoun('photo'), 'photos');
    });
    test('piano=>pianos', () {
      expect(pluralEngine.convertToPluralNoun('piano'), 'pianos');
    });
    test('halo=>halos', () {
      expect(pluralEngine.convertToPluralNoun('halo'), 'halos');
    });
  });
  group('Replace -<consonant>o with -oes', () {
    test('potato=>potatoes', () {
      expect(pluralEngine.convertToPluralNoun('potato'), 'potatoes');
    });
  });
  group('Replace -is with -es', () {
    test('ellipsis=>ellipses', () {
      expect(pluralEngine.convertToPluralNoun('ellipsis'), 'ellipses');
    });
    test('axis=>axes', () {
      expect(pluralEngine.convertToPluralNoun('axis'), 'axes');
    });
    test('analysis=>analyses', () {
      expect(pluralEngine.convertToPluralNoun('analysis'), 'analyses');
    });
    test('crisis=>crises', () {
      expect(pluralEngine.convertToPluralNoun('crisis'), 'crises');
    });
    test('thesis=>theses', () {
      expect(pluralEngine.convertToPluralNoun('thesis'), 'theses');
    });
  });
  group('Replace -on with -a', () {
    test('criterion=>criteria', () {
      expect(pluralEngine.convertToPluralNoun('criterion'), 'criteria');
    });
    test('phenomenon=>phenomena', () {
      expect(pluralEngine.convertToPluralNoun('phenomenon'), 'phenomena');
    });
  });
  group('Replace -um with -a', () {
    test('criterion=>criteria', () {
      expect(pluralEngine.convertToPluralNoun('criterion'), 'criteria');
    });
    test('datum=>data', () {
      expect(pluralEngine.convertToPluralNoun('datum'), 'data');
    });
    test('memorandum=>memoranda', () {
      expect(pluralEngine.convertToPluralNoun('memorandum'), 'memoranda');
    });
    test('bacterium=>bacteria', () {
      expect(pluralEngine.convertToPluralNoun('bacterium'), 'bacteria');
    });
    test('stratum=>strata', () {
      expect(pluralEngine.convertToPluralNoun('stratum'), 'strata');
    });
    test('curriculum=>curricula', () {
      expect(pluralEngine.convertToPluralNoun('curriculum'), 'curricula');
    });
  });
  group('Exception on replace -s with -ses', () {
    test('alumnus=>alumni', () {
      expect(pluralEngine.convertToPluralNoun('alumnus'), 'alumni');
    });
    test('cactus=>cacti', () {
      expect(pluralEngine.convertToPluralNoun('cactus'), 'cacti');
    });
    test('corpus=>corpora', () {
      expect(pluralEngine.convertToPluralNoun('corpus'), 'corpora');
    });
    test('fungus=>fungi', () {
      expect(pluralEngine.convertToPluralNoun('fungus'), 'fungi');
    });
    test('gas=>gasses', () {
      expect(pluralEngine.convertToPluralNoun('gas'), 'gasses');
    });
    test('hippopotamus=>hippopotamuses', () {
      expect(
        pluralEngine.convertToPluralNoun('hippopotamus'),
        'hippopotamuses',
      );
    });
    test('nucleus=>nuclei', () {
      expect(pluralEngine.convertToPluralNoun('nucleus'), 'nuclei');
    });
    test('stimulus=>stimuli', () {
      expect(pluralEngine.convertToPluralNoun('stimulus'), 'stimuli');
    });
  });
  group('Replace -s with -ses', () {
    test('bus=>buses', () {
      expect(pluralEngine.convertToPluralNoun('bus'), 'buses');
    });
    test('syllabus=>syllabuses', () {
      expect(pluralEngine.convertToPluralNoun('syllabus'), 'syllabuses');
    });
  });
  group('Replace -ss with -sses', () {
    test('truss=>trusses', () {
      expect(pluralEngine.convertToPluralNoun('truss'), 'trusses');
    });
  });
  group('Replace -sh with -shes', () {
    test('marsh=>marshes', () {
      expect(pluralEngine.convertToPluralNoun('marsh'), 'marshes');
    });
  });
  group('Replace -ch with -ches', () {
    test('lunch=>lunches', () {
      expect(pluralEngine.convertToPluralNoun('lunch'), 'lunches');
    });
  });
  group('Exceptions on replace -x with -xes', () {
    test('appendix=>appendices', () {
      expect(pluralEngine.convertToPluralNoun('appendix'), 'appendices');
    });
    test('codex=>codices', () {
      expect(pluralEngine.convertToPluralNoun('codex'), 'codices');
    });
  });
  group('Replace -x with -xes', () {
    test('tax=>taxes', () {
      expect(pluralEngine.convertToPluralNoun('tax'), 'taxes');
    });
  });
  group('Exceptions on replace -z with -zes', () {
    test('fez=>fezzes', () {
      expect(pluralEngine.convertToPluralNoun('fez'), 'fezzes');
    });
    test('quiz=>quizzes', () {
      expect(pluralEngine.convertToPluralNoun('quiz'), 'quizzes');
    });
  });
  group('Replace -z with -zes', () {
    test('blitz=>blitzes', () {
      expect(pluralEngine.convertToPluralNoun('blitz'), 'blitzes');
    });
  });
  group('Otherwise add s', () {
    test('car=>cars', () {
      expect(pluralEngine.convertToPluralNoun('car'), 'cars');
    });
    test('dog=>dogs', () {
      expect(pluralEngine.convertToPluralNoun('dog'), 'dogs');
    });
    test('book=>books', () {
      expect(pluralEngine.convertToPluralNoun('book'), 'books');
    });
    test('apple=>apples', () {
      expect(pluralEngine.convertToPluralNoun('apple'), 'apples');
    });
    test('house=>houses', () {
      expect(pluralEngine.convertToPluralNoun('house'), 'houses');
    });
  });
  group('Random tests', () {
    test('addendum=>addenda or addendums', () {
      expect(
        [
          'addenda',
          'addendums',
        ].contains(pluralEngine.convertToPluralNoun('addendum')),
        true,
      );
    });
    test('aircraft=>aircraft', () {
      expect(pluralEngine.convertToPluralNoun('aircraft'), 'aircraft');
    });
    test('alumna=>alumnae', () {
      expect(pluralEngine.convertToPluralNoun('alumna'), 'alumnae');
    });
    test('alumnus=>alumni', () {
      expect(pluralEngine.convertToPluralNoun('alumnus'), 'alumni');
    });
    test('analysis=>analyses', () {
      expect(pluralEngine.convertToPluralNoun('analysis'), 'analyses');
    });
    test('antenna=>antennae or antennas', () {
      expect(
        [
          'antennae',
          'antennas',
        ].contains(pluralEngine.convertToPluralNoun('antenna')),
        true,
      );
    });
    test('antithesis=>antitheses', () {
      expect(pluralEngine.convertToPluralNoun('antithesis'), 'antitheses');
    });
    test('apex=>apices or apexes', () {
      expect(
        ['apices', 'apexes'].contains(pluralEngine.convertToPluralNoun('apex')),
        true,
      );
    });
    test('appendix=>appendices or appendixes', () {
      expect(
        [
          'appendices',
          'appendixes',
        ].contains(pluralEngine.convertToPluralNoun('appendix')),
        true,
      );
    });
    test('axis=>axes', () {
      expect(pluralEngine.convertToPluralNoun('axis'), 'axes');
    });
    test('bacillus=>bacilli', () {
      expect(pluralEngine.convertToPluralNoun('bacillus'), 'bacilli');
    });
    test('bacterium=>bacteria', () {
      expect(pluralEngine.convertToPluralNoun('bacterium'), 'bacteria');
    });
    test('basis=>bases', () {
      expect(pluralEngine.convertToPluralNoun('basis'), 'bases');
    });
    test('beau=>beaux or beaus', () {
      expect(
        ['beaux', 'beaus'].contains(pluralEngine.convertToPluralNoun('beau')),
        true,
      );
    });
    test('bison=>bison', () {
      expect(pluralEngine.convertToPluralNoun('bison'), 'bison');
    });
    test('bureau=>bureaux or bureaus', () {
      expect(
        [
          'bureaux',
          'bureaus',
        ].contains(pluralEngine.convertToPluralNoun('bureau')),
        true,
      );
    });
    test('cactus=>cacti or cactus or cactuses', () {
      expect(
        [
          'cacti',
          'cactus',
          'cactuses',
        ].contains(pluralEngine.convertToPluralNoun('cactus')),
        true,
      );
    });
    test('château=>châteaux or châteaus', () {
      expect(
        [
          'châteaux',
          'châteaus',
        ].contains(pluralEngine.convertToPluralNoun('château')),
        true,
      );
    });
    test('child=>children', () {
      expect(pluralEngine.convertToPluralNoun('child'), 'children');
    });
    test('codex=>codices', () {
      expect(pluralEngine.convertToPluralNoun('codex'), 'codices');
    });
    test('concert=>concerts', () {
      expect(pluralEngine.convertToPluralNoun('concert'), 'concerts');
    });
    test('crisis=>crises', () {
      expect(pluralEngine.convertToPluralNoun('crisis'), 'crises');
    });
    test('criterion=>criteria or criterions', () {
      expect(
        [
          'criteria',
          'criterions',
        ].contains(pluralEngine.convertToPluralNoun('criterion')),
        true,
      );
    });
    test('curriculum=>curricula or curriculums', () {
      expect(
        [
          'curricula',
          'curriculums',
        ].contains(pluralEngine.convertToPluralNoun('curriculum')),
        true,
      );
    });
    test('datum=>data', () {
      expect(pluralEngine.convertToPluralNoun('datum'), 'data');
    });
    test('deer=>deer or deers', () {
      expect(
        ['deer', 'deers'].contains(pluralEngine.convertToPluralNoun('deer')),
        true,
      );
    });
    test('diagnosis=>diagnoses', () {
      expect(pluralEngine.convertToPluralNoun('diagnosis'), 'diagnoses');
    });
    test('die=>dice or dies', () {
      expect(
        ['dice', 'dies'].contains(pluralEngine.convertToPluralNoun('die')),
        true,
      );
    });
    test('dwarf=>dwarves or dwarfs', () {
      expect(
        [
          'dwarves',
          'dwarfs',
        ].contains(pluralEngine.convertToPluralNoun('dwarf')),
        true,
      );
    });
    test('ellipsis=>ellipses', () {
      expect(pluralEngine.convertToPluralNoun('ellipsis'), 'ellipses');
    });
    test('erratum=>errata', () {
      expect(pluralEngine.convertToPluralNoun('erratum'), 'errata');
    });
    test('fez=>fezzes or fezes', () {
      expect(
        ['fezzes', 'fezes'].contains(pluralEngine.convertToPluralNoun('fez')),
        true,
      );
    });
    test('fish=>fish or fishes', () {
      expect(
        ['fish', 'fishes'].contains(pluralEngine.convertToPluralNoun('fish')),
        true,
      );
    });
    test('focus=>foci or focuses', () {
      expect(
        ['foci', 'focuses'].contains(pluralEngine.convertToPluralNoun('focus')),
        true,
      );
    });
    test('foot=>feet or foot', () {
      expect(
        ['feet', 'foot'].contains(pluralEngine.convertToPluralNoun('foot')),
        true,
      );
    });
    test('formula=>formulae or formulas', () {
      expect(
        [
          'formulae',
          'formulas',
        ].contains(pluralEngine.convertToPluralNoun('formula')),
        true,
      );
    });
    test('fungus=>fungi or funguses', () {
      expect(
        [
          'fungi',
          'funguses',
        ].contains(pluralEngine.convertToPluralNoun('fungus')),
        true,
      );
    });
    test('genus=>genera or genuses', () {
      expect(
        [
          'genera',
          'genuses',
        ].contains(pluralEngine.convertToPluralNoun('genus')),
        true,
      );
    });
    test('goose=>geese', () {
      expect(pluralEngine.convertToPluralNoun('goose'), 'geese');
    });
    test('grouse=>grouse or grouses', () {
      expect(
        [
          'grouse',
          'grouses',
        ].contains(pluralEngine.convertToPluralNoun('grouse')),
        true,
      );
    });
    test('half=>halves', () {
      expect(pluralEngine.convertToPluralNoun('half'), 'halves');
    });
    test('hoof=>hooves or hoofs', () {
      expect(
        ['hooves', 'hoofs'].contains(pluralEngine.convertToPluralNoun('hoof')),
        true,
      );
    });
    test('hypothesis=>hypotheses', () {
      expect(pluralEngine.convertToPluralNoun('hypothesis'), 'hypotheses');
    });
    test('index=>indices or indexes', () {
      expect(
        [
          'indices',
          'indexes',
        ].contains(pluralEngine.convertToPluralNoun('index')),
        true,
      );
    });
    test('larva=>larvae or larvas', () {
      expect(
        [
          'larvae',
          'larvas',
        ].contains(pluralEngine.convertToPluralNoun('larva')),
        true,
      );
    });
    test('loaf=>loaves', () {
      expect(pluralEngine.convertToPluralNoun('loaf'), 'loaves');
    });
    test('man=>men', () {
      expect(pluralEngine.convertToPluralNoun('man'), 'men');
    });
    test('matrix=>matrices or matrixes', () {
      expect(
        [
          'matrices',
          'matrixes',
        ].contains(pluralEngine.convertToPluralNoun('matrix')),
        true,
      );
    });
    test('medium=>media or mediums', () {
      expect(
        [
          'media',
          'mediums',
        ].contains(pluralEngine.convertToPluralNoun('medium')),
        true,
      );
    });
    test('memorandum=>memoranda or memorandums', () {
      expect(
        [
          'memoranda',
          'memorandums',
        ].contains(pluralEngine.convertToPluralNoun('memorandum')),
        true,
      );
    });
    test('moose=>moose', () {
      expect(pluralEngine.convertToPluralNoun('moose'), 'moose');
    });
    test('mouse=>mice', () {
      expect(pluralEngine.convertToPluralNoun('mouse'), 'mice');
    });
    test('nebula=>nebulae or nebulas', () {
      expect(
        [
          'nebulae',
          'nebulas',
        ].contains(pluralEngine.convertToPluralNoun('nebula')),
        true,
      );
    });
    test('nucleus=>nuclei or nucleuses', () {
      expect(
        [
          'nuclei',
          'nucleuses',
        ].contains(pluralEngine.convertToPluralNoun('nucleus')),
        true,
      );
    });
    test('oasis=>oases', () {
      expect(pluralEngine.convertToPluralNoun('oasis'), 'oases');
    });
    test('offspring=>offspring or offsprings', () {
      expect(
        [
          'offspring',
          'offsprings',
        ].contains(pluralEngine.convertToPluralNoun('offspring')),
        true,
      );
    });
    test('opus=>opera or opuses', () {
      expect(
        ['opera', 'opuses'].contains(pluralEngine.convertToPluralNoun('opus')),
        true,
      );
    });
    test('ovum=>ova', () {
      expect(pluralEngine.convertToPluralNoun('ovum'), 'ova');
    });
    test('ox=>oxen or ox', () {
      expect(
        ['oxen', 'ox'].contains(pluralEngine.convertToPluralNoun('ox')),
        true,
      );
    });
    test('parenthesis=>parentheses', () {
      expect(pluralEngine.convertToPluralNoun('parenthesis'), 'parentheses');
    });
    test('phenomenon=>phenomena or phenomenons', () {
      expect(
        [
          'phenomena',
          'phenomenons',
        ].contains(pluralEngine.convertToPluralNoun('phenomenon')),
        true,
      );
    });
    test('phylum=>phyla', () {
      expect(pluralEngine.convertToPluralNoun('phylum'), 'phyla');
    });
    test('quiz=>quizzes', () {
      expect(pluralEngine.convertToPluralNoun('quiz'), 'quizzes');
    });
    test('radius=>radii or radiuses', () {
      expect(
        [
          'radii',
          'radiuses',
        ].contains(pluralEngine.convertToPluralNoun('radius')),
        true,
      );
    });
    test('referendum=>referenda or referendums', () {
      expect(
        [
          'referenda',
          'referendums',
        ].contains(pluralEngine.convertToPluralNoun('referendum')),
        true,
      );
    });
    test('salmon=>salmon or salmons', () {
      expect(
        [
          'salmon',
          'salmons',
        ].contains(pluralEngine.convertToPluralNoun('salmon')),
        true,
      );
    });
    test('scarf=>scarves or scarfs', () {
      expect(
        [
          'scarves',
          'scarfs',
        ].contains(pluralEngine.convertToPluralNoun('scarf')),
        true,
      );
    });
    test('self=>selves', () {
      expect(pluralEngine.convertToPluralNoun('self'), 'selves');
    });
    test('series=>series', () {
      expect(pluralEngine.convertToPluralNoun('series'), 'series');
    });
    test('sheep=>sheep', () {
      expect(pluralEngine.convertToPluralNoun('sheep'), 'sheep');
    });
    test('shrimp=>shrimp or shrimps', () {
      expect(
        [
          'shrimp',
          'shrimps',
        ].contains(pluralEngine.convertToPluralNoun('shrimp')),
        true,
      );
    });
    test('species=>species', () {
      expect(pluralEngine.convertToPluralNoun('species'), 'species');
    });
    test('stratum=>strata', () {
      expect(pluralEngine.convertToPluralNoun('stratum'), 'strata');
    });
    test('swine=>swine', () {
      expect(pluralEngine.convertToPluralNoun('swine'), 'swine');
    });
    test('syllabus=>syllabi or syllabuses', () {
      expect(
        [
          'syllabi',
          'syllabuses',
        ].contains(pluralEngine.convertToPluralNoun('syllabus')),
        true,
      );
    });
    test('symposium=>symposia or symposiums', () {
      expect(
        [
          'symposia',
          'symposiums',
        ].contains(pluralEngine.convertToPluralNoun('symposium')),
        true,
      );
    });
    test('synopsis=>synopses', () {
      expect(pluralEngine.convertToPluralNoun('synopsis'), 'synopses');
    });
    test('tableau=>tableaux or tableaus', () {
      expect(
        [
          'tableaux',
          'tableaus',
        ].contains(pluralEngine.convertToPluralNoun('tableau')),
        true,
      );
    });
    test('thesis=>theses', () {
      expect(pluralEngine.convertToPluralNoun('thesis'), 'theses');
    });
    test('thief=>thieves', () {
      expect(pluralEngine.convertToPluralNoun('thief'), 'thieves');
    });
    test('tooth=>teeth', () {
      expect(pluralEngine.convertToPluralNoun('tooth'), 'teeth');
    });
    test('trout=>trout or trouts', () {
      expect(
        ['trout', 'trouts'].contains(pluralEngine.convertToPluralNoun('trout')),
        true,
      );
    });
    test('tuna=>tuna or tunas', () {
      expect(
        ['tuna', 'tunas'].contains(pluralEngine.convertToPluralNoun('tuna')),
        true,
      );
    });
    test('vertebra=>vertebrae or vertebras', () {
      expect(
        [
          'vertebrae',
          'vertebras',
        ].contains(pluralEngine.convertToPluralNoun('vertebra')),
        true,
      );
    });
    test('vertex=>vertices or vertexes', () {
      expect(
        [
          'vertices',
          'vertexes',
        ].contains(pluralEngine.convertToPluralNoun('vertex')),
        true,
      );
    });
    test('vortex=>vortices or vortexes', () {
      expect(
        [
          'vortices',
          'vortexes',
        ].contains(pluralEngine.convertToPluralNoun('vortex')),
        true,
      );
    });
    test('wharf=>wharves or wharfs', () {
      expect(
        [
          'wharves',
          'wharfs',
        ].contains(pluralEngine.convertToPluralNoun('wharf')),
        true,
      );
    });
    test('wife=>wives', () {
      expect(pluralEngine.convertToPluralNoun('wife'), 'wives');
    });
    test('wolf=>wolves', () {
      expect(pluralEngine.convertToPluralNoun('wolf'), 'wolves');
    });
    test('woman=>women', () {
      expect(pluralEngine.convertToPluralNoun('woman'), 'women');
    });
  });

  group('Test letter case', () {
    test('Starts with lower case', () {
      expect(pluralEngine.convertToPluralNoun('mouse'), 'mice');
    });
    test('Starts with upper case', () {
      expect(pluralEngine.convertToPluralNoun('Car'), 'Cars');
    });
    test('All upper case', () {
      expect(pluralEngine.convertToPluralNoun('TAX'), 'TAXES');
    });
  });
}
