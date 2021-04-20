enum Genders { MALE, FEMALE }

extension Gender on Genders {
  String get value {
    switch (this) {
      case Genders.MALE:
        return "Masculino";
      case Genders.FEMALE:
        return "Feminino";
    }
  }

  int get code {
    switch (this) {
      case Genders.MALE:
        return 10;
      case Genders.FEMALE:
        return 20;
    }
  }
}
