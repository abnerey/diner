import 'package:flutter/material.dart';

class Thumbnail extends StatelessWidget {

  Thumbnail({
    @required this.backgroundUrl,
    @required this.height,
    @required this.lunchName,
    this.width,
  });

  final String backgroundUrl;
  final String lunchName;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.3),
            blurRadius: 12.0,
            offset: Offset(0.0, 4.0)
          )
        ]
      ),
      child: Container(
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                this.backgroundUrl,
                fit: BoxFit.cover,
                // height: 300.0,
                height: this.height,
                colorBlendMode: BlendMode.srcOver,
                color: new Color.fromARGB(120, 20, 10, 100),
              )
            ),
            _getLunchDescription()
          ],
        ),
      ),
    );
  }

  _getLunchDescription() {
    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        bottom: 20.0
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              this.lunchName,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 35.0
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'JUEVES 21 DE FEBRERO',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 14.0
              ),
            ),
          ),
        ],
      )
    );
  }

}