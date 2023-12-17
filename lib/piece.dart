import 'package:game/values.dart';

class Piece {
  // type t3 Piece L or J or ...
  Tetromino type;
  Piece({required this.type});
  // case li yjiw mbdlin fl Color t3hom 3la 7sab Type
  List<int> position = [];

  // n3emro position[] 3la 7sab kol Type
  void initializePiece() {
    switch (type) {
      case Tetromino.L:
        // position = [4, 14, 24, 25];
        position = [
          -26,
          -16,
          -6,
          -5,
        ];

        break;
      case Tetromino.J:
        position = [
          -25,
          -15,
          -5,
          -6,
        ];

        // TODO: Handle this case.
        break;
      case Tetromino.I:
        position = [
          -4,
          -5,
          -6,
          -7,
        ];

        break;
      case Tetromino.O:
        position = [
          -15,
          -16,
          -5,
          -6,
        ];

        break;
      case Tetromino.S:
        position = [
          -15,
          -14,
          -6,
          -5,
        ];

        break;
      case Tetromino.Z:
        position = [
          -17,
          -16,
          -6,
          -5,
        ];

        break;
      case Tetromino.T:
        position = [-26, -16, -6, -15];

        break;
    }
  }

//moving piece
  void movePiece(Direction direction) {
    switch (direction) {
      case Direction.left:
        for (int i = 0; i < position.length; i++) {
          // kol case mn Piece tjbed l Left
          position[i] -= 1;
        }
        // TODO: Handle this case.
        break;
      case Direction.right:
        for (int i = 0; i < position.length; i++) {
          position[i] += 1;
        }
        // TODO: Handle this case.
        break;
      case Direction.down:
        for (int i = 0; i < position.length; i++) {
          // rowLength bh Tahbet b Star lel lta7t
          position[i] += rowLength;
        }
        // TODO: Handle this case.
        break;
    }
  }
}
