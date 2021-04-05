import 'package:plural_noun/plural_noun.dart';

abstract class PluralConverter {
  String convertToPluralNoun(String singularNoun);
}

/// Appends a suffix to the given noun to make it plural
/// E.g. adds an s to car.
class AppendConverter implements PluralConverter {
  final String suffix;

  AppendConverter(this.suffix);

  @override
  String convertToPluralNoun(String singularNoun) => singularNoun + suffix;
}

/// Returns the same noun, since the singular noun is the same as a plural noun.
/// E.g.: deer
class NoChangeConverter extends PluralConverter {
  @override
  String convertToPluralNoun(String singularNoun) => singularNoun;
}

/// Replaces the singular noun with a different plural noun
/// This is often used for exceptions to basic [PluralRule]
/// E.g.: replace mouse with mice
class ReplaceConverter extends PluralConverter {
  final String replacement;

  ReplaceConverter(this.replacement);

  @override
  String convertToPluralNoun(String singularNoun) => replacement;
}

/// Replaces a given suffix
/// This is often used in a basic [PluralRule]
/// e.g. replace -f with -ves e.g. wolf=>wolves
class ReplaceSuffixConverter extends PluralConverter {
  final RegExp suffixExpression;
  final String suffixReplacement;

  ReplaceSuffixConverter(String suffixExpressionToFind, this.suffixReplacement)
      : suffixExpression = RegExp(suffixExpressionToFind + "\$");

  @override
  String convertToPluralNoun(String singularNoun) =>
      singularNoun.replaceAll(suffixExpression, suffixReplacement);
}
