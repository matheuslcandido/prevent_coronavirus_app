import 'package:flutter/material.dart';

class Prevention extends StatelessWidget {
  final List<Map<String, Object>> preventions;
  final indexPrevention;

  Prevention({
    @required this.preventions,
    @required this.indexPrevention,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            preventions[indexPrevention]['title'],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Image.network(preventions[indexPrevention]['imageUrl']),
          ...(preventions[indexPrevention]['descriptions']
                  as List<Map<String, Object>>)
              .map((description) {
            return Text(
              description['text'],
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
