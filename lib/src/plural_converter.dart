abstract class PluralConverter {
  String convertToPluralNoun(String singularNoun);
}

class AppendConverter implements PluralConverter {
  final String suffix;

  AppendConverter(this.suffix);

  @override
  String convertToPluralNoun(String singularNoun) => singularNoun + suffix;
}

class NoChangeConverter extends PluralConverter {
  @override
  String convertToPluralNoun(String singularNoun) => singularNoun;
}

class ReplaceConverter extends PluralConverter {
  final String replacement;

  ReplaceConverter(this.replacement);

  @override
  String convertToPluralNoun(String singularNoun) => replacement;
}

class ReplaceSuffixConverter extends PluralConverter {
  final RegExp suffixExpression;
  final String suffixReplacement;

  ReplaceSuffixConverter(String suffixExpressionToFind, this.suffixReplacement)
      : suffixExpression = RegExp(suffixExpressionToFind + "\$");

  @override
  String convertToPluralNoun(String singularNoun) =>
      singularNoun.replaceAll(suffixExpression, suffixReplacement);
}
