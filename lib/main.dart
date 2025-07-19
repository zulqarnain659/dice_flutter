import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: IconButton(
                icon: Image.asset("images/dice$leftDiceNumber.png"),
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: const Text('Awesome Snackbar!'),
                  //   ),
                  // );
                },
              )),
              Expanded(
                  child: IconButton(
                icon: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text("Called 2"),
                  //     behavior: SnackBarBehavior.floating,
                  //   ),
                  // );
                },
              )),
            ],
          ),
          Text("Score: "+(leftDiceNumber+rightDiceNumber).toString(), style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),)
        ],
      ),
      // child:
    );
  }

  void changeDice() {
    rightDiceNumber = Random().nextInt(6) + 1;
    leftDiceNumber = Random().nextInt(6) + 1;
  }
}
