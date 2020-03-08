import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Load extends StatefulWidget {
  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> {
  void logoshow() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/walkthrough');
  }

  @override
  void initState() {
    super.initState();
    logoshow();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingFour(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
