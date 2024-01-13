class ConditionsHelper {
  bool containsNonAlphabeticCharacters(String value) {
    return !RegExp(r'^[a-zA-Z]+$').hasMatch(value);
  }
}
