import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final List<String> choices;
  final int choiceIndex;

  Answer(this.selectHandler, this.choices, this.choiceIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: new BoxDecoration(
        color: Colors.lightBlue[200],
        borderRadius: new BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
      child: RaisedButton(
        color: Colors.white,
        textColor: Colors.black,
        child: Text(
          choices[choiceIndex],
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
