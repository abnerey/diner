import 'package:flutter/material.dart';
import 'package:diner/banner/banner.dart';
import 'package:diner/shared/clips/diagonal-clip.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:diner/thumbnail/thumbnail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Diner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

  @override
  Widget build(BuildContext context) {
    this._changeStatusBarColor();
    this.device_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: this.device_height,
        child: Stack(
          children: <Widget>[
            BannerHeader(
              thumbnail: Thumbnail(
                backgroundUrl: 'assets/img/1.jpg',
                lunchName: 'Arroz Lisboa',
                height: 300.0,
              ),
            ),
            _buildHeader(),
          ],
        ),
      )
    );
  }

  _changeStatusBarColor() async {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  }

  _buildHeader() {
    return Container(
      height: 30.0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 42.0),
        child: Row(
          children: <Widget>[
            // Icon(Icons.menu, size: 32.0, color: Colors.white),
            Expanded(
              child: Center(
                child: Text(
                  'DINER APP',
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'
                  )
                ),
              )
            )
          ],
        ),
      )
    );
  }
  
}
