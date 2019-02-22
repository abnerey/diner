import 'package:flutter/material.dart';
import 'package:diner/shared/clips/diagonal-clip.dart';
import 'package:diner/thumbnail/thumbnail.dart';

class BannerHeader extends StatelessWidget {
  double _bannerHeight = 400.0;

  BannerHeader({
    this.backgroundUrl,
    this.todaysMenu,
    this.thumbnail,
  });

  final backgroundUrl;
  final todaysMenu;
  final Thumbnail thumbnail;
  
  @override
  Widget build(BuildContext context) {
    /* return Positioned.fill(
      bottom: null,
      child: Image.asset(
        this.backgroundUrl,
        fit: BoxFit.cover,
        height: _bannerHeight,
        colorBlendMode: BlendMode.srcOver,
        color: new Color.fromARGB(120, 20, 10, 100),
      ),
    ); */
    return Positioned.fill(
      bottom: null,
      child: Container(
        child: _getTodaysMenu(),
        height: this._bannerHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0)
          ),
          gradient: new LinearGradient(
            colors: [
              Color.fromRGBO(244, 107, 69, 0.9),
              Color.fromRGBO(238, 168, 73, 0.9)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          shape: BoxShape.rectangle,
        ),
      )
    );
  }

  _getTodaysMenu() {
    return Container(
      margin:EdgeInsets.only(left: 35.0, bottom: 47.0, right: 35.0, top: 105.0),
      /* child: Thumbnail(
        backgroundUrl: this.backgroundUrl,
        lunchName: this.todaysMenu,
        height: 300.0,
      ), */
      child: this.thumbnail,
    );
  }

}