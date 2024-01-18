abstract class Validatable {
  bool validate();
}

/// Mixin for Validatable
/// mixed in to provide recursive validation mostly of notes in measures
///
mixin ValidatableMixin {
  bool isValid = false;
  bool isDirty = false;

  bool validate() {
    return false;
  }
}
