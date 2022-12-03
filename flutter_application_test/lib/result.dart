import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You Did It!";
    if ((resultScore >= 0) && (resultScore < 50)) {
      resultText = 'Behold, a Troll';
    } else if ((resultScore >= 50) && (resultScore < 120)) {
      resultText = "Sovengard awaits you brave warrior";
    } else if ((resultScore >= 120) && (resultScore < 150)) {
      resultText = "You are as wise as Gandalf himself";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: OutlinedButton(
                onPressed: resetHandler, child: Text("Restart Quiz")),
          )
        ],
      ),
    );
  }
}
