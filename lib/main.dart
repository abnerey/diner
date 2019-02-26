import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:diner/layout/banner/banner.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:diner/thumbnail/thumbnail.dart';
import 'package:diner/layout/nav-header/nav-header.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diner',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double device_height = 0.0;
  double device_width = 0.0;

  @override
  Widget build(BuildContext context) {
    this._changeStatusBarColor();
    this.device_height = MediaQuery.of(context).size.height;
    this.device_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        // height: this.device_height,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                BannerHeader(
                  thumbnail: Thumbnail(
                    backgroundUrl: 'assets/img/1.jpg',
                    lunchName: 'Arroz Lisboa',
                    height: 300.0,
                  ),
                ),
                Container(
                  width: this.device_width,
                  height: 150.0,
                  margin:EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 15.0
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.0,
                          right: 10.0,
                          bottom: 20.0,
                          left: 15.0
                        ),
                        child: Thumbnail(
                          backgroundUrl: 'assets/img/2.jpg',
                          lunchName: 'Pizza Artesanal',
                          height: 120.0,
                          width: 155.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.0,
                          right: 10.0,
                          bottom: 20.0,
                          left: 15.0
                        ),
                        child: Thumbnail(
                          backgroundUrl: 'assets/img/1.jpg',
                          lunchName: 'Pizza Artesanal',
                          height: 120.0,
                          width: 155.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.0,
                          right: 10.0,
                          bottom: 20.0,
                          left: 15.0
                        ),
                        child: Thumbnail(
                          backgroundUrl: 'assets/img/3.jpeg',
                          lunchName: 'Alitas Barbacoa',
                          height: 120.0,
                          width: 155.0,
                        ),
                      ),
                      /* Thumbnail(
                        backgroundUrl: 'assets/img/1.jpg',
                        lunchName: 'Pizza Artesanal',
                        height: 120.0,
                        width: 145.0,
                      ),
                      Thumbnail(
                        backgroundUrl: 'assets/img/3.jpeg',
                        lunchName: 'Alitas Barbacoa',
                        height: 120.0,
                        width: 145.0,
                      ),
                      Thumbnail(
                        backgroundUrl: 'assets/img/1.jpg',
                        lunchName: 'Pizza Artesanal',
                        height: 120.0,
                        width: 145.0,
                      ),
                      Thumbnail(
                        backgroundUrl: 'assets/img/1.jpg',
                        lunchName: 'Pizza Artesanal',
                        height: 120.0,
                        width: 145.0,
                      ), */
                    ],
                  ),
                )
              ],
            ),
            NavHeader(title: 'DINER APP'),
          ],
        ),
      )
    );
  }

  _changeStatusBarColor() async {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  }

}
