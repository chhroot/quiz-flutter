import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      width: double.infinity,
      child: ElevatedButton(
        // ignore: sort_child_properties_last, prefer_const_constructors
        style: ElevatedButton.styleFrom(
          // ignore: deprecated_member_use
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
