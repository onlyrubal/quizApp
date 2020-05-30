import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Quiz is completed. Reload the app.',
        style: TextStyle(
          fontSize: 22,
          color: Color(0xff01579b),
        ),
      ),
    );
  }
}
