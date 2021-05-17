class IsbnValidator {
  static bool Function(String) isValid = (value) {
    // ISBNかどうかの判定
    bool isIsbn = new RegExp(r'^978').hasMatch(value);
    return isIsbn;
  };
}
