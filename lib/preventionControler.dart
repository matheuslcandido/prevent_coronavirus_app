import 'package:flutter/material.dart';

class PreventionControler extends StatelessWidget {
  final Function previousPrevention;
  final Function nextPrevention;

  PreventionControler({
    @required this.previousPrevention,
    @required this.nextPrevention,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 4),
            child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Previous'),
              onPressed: previousPrevention,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Next'),
              onPressed: nextPrevention,
            ),
          ),
        ),
      ],
    );
  }
}
