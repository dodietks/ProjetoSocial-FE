enum BeltTypes {
  WHITE,
  GRAY_WHITE,
  GRAY,
  GRAY_BLACK,
  YELLOW_WHITE,
  YELLOW,
  YELLOW_BLACK,
  ORANGE_WHITE,
  ORANGE,
  ORANGE_BLACK,
  GREEN_WHITE,
  GREEN,
  GREEN_BLACK,
  BLUE,
  PURPLE,
  BROWN,
  BLACK,
  RED_BLACK,
  RED_WHITE,
  RED
}

extension BeltType on BeltTypes {
  String get value {
    switch (this) {
      case BeltTypes.WHITE:
        return "Faixa branca";
      case BeltTypes.GRAY_WHITE:
        return "Faixa cinza com branco";
      case BeltTypes.GRAY:
        return "Faixa cinza";
      case BeltTypes.GRAY_BLACK:
        return "Faixa cinza com preto";
      case BeltTypes.YELLOW_WHITE:
        return "Faixa amarela com branco";
      case BeltTypes.YELLOW:
        return "Faixa amarela";
      case BeltTypes.YELLOW_BLACK:
        return "Faixa amarela com preto";
      case BeltTypes.ORANGE_WHITE:
        return "Faixa laranja com branco";
      case BeltTypes.ORANGE:
        return "Faixa laranja";
      case BeltTypes.ORANGE_BLACK:
        return "Faixa laranja com preto";
      case BeltTypes.GREEN_WHITE:
        return "Faixa verde com branco";
      case BeltTypes.GREEN:
        return "Faixa verde";
      case BeltTypes.GREEN_BLACK:
        return "Faixa verde com preto";
      case BeltTypes.BLUE:
        return "Faixa azul";
      case BeltTypes.PURPLE:
        return "Faixa roxa";
      case BeltTypes.BROWN:
        return "Faixa marrom";
      case BeltTypes.BLACK:
        return "Faixa preta";
      case BeltTypes.RED_BLACK:
        return "Faixa vermelha e preta";
      case BeltTypes.RED_WHITE:
        return "Faixa vermelha e branca";
      case BeltTypes.RED:
        return "Faixa vermelha";
    }
  }

  int get code {
    switch (this) {
      case BeltTypes.WHITE:
        return 10;
      case BeltTypes.GRAY_WHITE:
        return 20;
      case BeltTypes.GRAY:
        return 21;
      case BeltTypes.GRAY_BLACK:
        return 22;
      case BeltTypes.YELLOW_WHITE:
        return 30;
      case BeltTypes.YELLOW:
        return 31;
      case BeltTypes.YELLOW_BLACK:
        return 32;
      case BeltTypes.ORANGE_WHITE:
        return 40;
      case BeltTypes.ORANGE:
        return 41;
      case BeltTypes.ORANGE_BLACK:
        return 42;
      case BeltTypes.GREEN_WHITE:
        return 50;
      case BeltTypes.GREEN:
        return 51;
      case BeltTypes.GREEN_BLACK:
        return 52;
      case BeltTypes.BLUE:
        return 60;
      case BeltTypes.PURPLE:
        return 70;
      case BeltTypes.BROWN:
        return 80;
      case BeltTypes.BLACK:
        return 90;
      case BeltTypes.RED_BLACK:
        return 100;
      case BeltTypes.RED_WHITE:
        return 101;
      case BeltTypes.RED:
        return 102;
    }
  }
}
