Future<void> main() async {
  WhiteQueen queen = WhiteQueen();
  WhiteKing whiteKing = WhiteKing();
  WhiteRock rock = WhiteRock();
  BlackKing blackKing = BlackKing();
  Turn turn = Turn();

  List<Figure> chessBoard = [];
  chessBoard.add(queen);
  chessBoard.add(whiteKing);
  chessBoard.add(blackKing);
  chessBoard.add(rock);
  chessBoard.add(turn);

  for (var turn in chessBoard) {
    turn.move();
    turn.win();
  }
}

abstract class Figure {
  void move() {}

  void win() {}
}

class WhiteQueen extends Figure {
  void move() {
    print('Я хожу как все, кроме коня');
  }

  void win() {
    print('Ставлю мат!');
  }
}

class WhiteKing extends Figure {
  void move() {
    print('Я хожу на одну клетку');
  }

  void win() {
    print('Стаьте мат, глупцы!');
  }
}

class WhiteRock extends Figure {
  void move() {
    print('Я хожу по прямым');
  }

  void win() {
    print('Помогаю ставить мат королеве');
  }
}

class BlackKing extends Figure {
  void move() {
    print('Один в поле не воин');
  }

  void win() {
    print('Побеждён но не сломлен');
  }
}

class Turn extends WhiteQueen {
  late bool _turn;

  void move() {
    _turn = !_turn;
    if (_turn == true) {
      print('White Queen move');
    } else {
      print('Rock move');
    }
  }
}
