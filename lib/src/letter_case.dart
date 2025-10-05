/// An [CaseType] implementation checks if a text matches the [CaseType] and can convert a text in this [CaseType]
abstract class CaseType {
  bool matches(String text);

  String convert(String text);
}

/// A text that starts with an Upper case character
class _StartsWithUpperCase extends CaseType {
  @override
  bool matches(String text) {
    if (text.isEmpty) {
      return false;
    }
    String firstLetter = text.substring(0, 1);
    return firstLetter.toUpperCase() == firstLetter;
  }

  @override
  String convert(String text) {
    if (text.isEmpty) {
      return '';
    }
    String firstLetter = text.substring(0, 1).toUpperCase();
    if (text.length == 1) {
      return firstLetter;
    } else {
      return firstLetter + text.substring(1);
    }
  }
}

/// a text that starts with an lower case character
class _StartsWithLowerCase extends CaseType {
  @override
  bool matches(String text) {
    if (text.isEmpty) {
      return false;
    }
    String firstLetter = text.substring(0, 1);
    return firstLetter.toLowerCase() == firstLetter;
  }

  @override
  String convert(String text) {
    if (text.isEmpty) {
      return '';
    }
    String firstLetter = text.substring(0, 1).toLowerCase();
    if (text.length == 1) {
      return firstLetter;
    } else {
      return firstLetter + text.substring(1);
    }
  }
}

/// A TEXT WHERE ALL CHARACTERS ARE IN UPPER CASE
class _AllUpperCase extends CaseType {
  @override
  bool matches(String text) => text.toUpperCase() == text;

  @override
  String convert(String text) => text.toUpperCase();
}

/// a text where all characters are in lower case
class _AllLowerCase extends CaseType {
  @override
  bool matches(String text) => text.toLowerCase() == text;

  @override
  String convert(String text) => text.toLowerCase();
}

/// a list of [CaseType]s with a method to find a matching [CaseType]
List<CaseType> caseTypes = [
  _AllLowerCase(),
  _AllUpperCase(),
  _StartsWithLowerCase(),
  _StartsWithUpperCase(),
];

CaseType findCaseTypeFor(String text) =>
    caseTypes.firstWhere((caseType) => caseType.matches(text));
