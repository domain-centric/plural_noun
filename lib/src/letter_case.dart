import 'package:collection/collection.dart';

abstract class CaseType {
  bool applies(String text);

  String convert(String text);
}

class _StartsWithUpperCase extends CaseType {
  bool applies(String text) {
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

class _StartsWithLowerCase extends CaseType {
  bool applies(String text) {
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

class _AllUpperCase extends CaseType {
  bool applies(String text) => text.toUpperCase() == text;

  @override
  String convert(String text) => text.toUpperCase();
}

class _AllLowerCase extends CaseType {
  bool applies(String text) => text.toLowerCase() == text;

  @override
  String convert(String text) => text.toLowerCase();
}

class CaseTypes extends DelegatingList<CaseType> {
  CaseTypes()
      : super([
          _AllLowerCase(),
          _AllUpperCase(),
          _StartsWithLowerCase(),
          _StartsWithUpperCase(),
        ]);

  CaseType findFor(String text) {
    return firstWhere((caseType) => caseType.applies(text));
  }
}
