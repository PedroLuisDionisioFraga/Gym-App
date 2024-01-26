/// Extension on the [String] class that provides input validation methods.
///
/// This extension adds common validation rules for strings, such as checking for empty strings,
/// limiting the length of the string, and ensuring that the string does not end with a space.
/// It also includes specific validation rules for passwords, such as checking for the presence
/// of special characters and enforcing a minimum length.
extension InputValidator on String {


  /// Validates the input field based on common validation rules.
  /// Usage the [fieldName] to show in the error message.
  /// Returns an [String] error message if:
  /// 1. It's empty.
  /// 2. Exceeds 20 characters.
  /// 3. Ends with a space, contains special characters.
  ///
  /// Otherwise returns null.
  String? _commonsValidation(String fieldName) {
    if (isEmpty) {
      return "$fieldName é obrigatório";
    }
    if (length > 20) {
      return "$fieldName não pode ter mais de 20 caracteres";
    }
    if (endsWith(" ")) {
      return "$fieldName não pode terminar com um 'espaço'";
    }
    return null;
  }

  /// Performs validation checks for a username.
  ///
  /// Returns an [String] error message if:
  /// 1. It's empty.
  /// 2. Exceeds 20 characters.
  /// 3. Ends with a space.
  ///
  /// Otherwise, returns null indicating that the password is valid.
  String? validateUsername() {
    return _commonsValidation("O usuário");
  }

  /// Performs validation checks for a password.
  ///
  /// Returns an [String] error message if:
  /// 1. It's empty.
  /// 2. Exceeds 20 characters.
  /// 3. Ends with a space.
  /// 4. Contains special characters.
  /// 5. It's less than two characters.
  ///
  /// Otherwise, returns null indicating that the password is valid.
  String? validatePassword() {
    String? validationPassword = _commonsValidation("A senha");
    if (validationPassword != null) {
      return validationPassword;
    }

    // Below was particulars validations for password
    if (contains(RegExp(r"[^a-zA-Z0-9]"))) {
      return "A senha não pode ter caracteres especiais";
    }
    if (length < 2) {
      return "A senha não pode ter menos que dois caracteres";
    }
    return null;
  }
}
