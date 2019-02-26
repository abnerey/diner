import 'package:flutter/material.dart';

class NavHeader extends StatelessWidget {

  NavHeader({
    @required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 42.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  this.title,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
