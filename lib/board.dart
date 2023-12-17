import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game/piece.dart';
import 'package:game/pixel.dart';
import 'package:game/values.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
// current tetris piece
  Piece currentPiece = Piece(type: Tetromino.L);
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    startGame();
  }

  void startGame() {
    currentPiece.initializePiece();
    Duration frameRate = const Duration(milliseconds: 800);
    gameLoop(frameRate);
  }

  void gameLoop(Duration duration) {
    Timer.periodic(duration, (timer) {
      setState(() {
        currentPiece.movePiece(Direction.down);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: rowLength,
          ),
          itemCount: rowLength * colLength,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            if (currentPiece.position.contains(index)) {
              return Pixel(
                color: Colors.yellow,
                child: index,
              );
            } else {
              return Pixel(
                color: Colors.grey[900],
                child: index,
              );
            }
          }),
    );
  }
}
