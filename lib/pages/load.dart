import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobileuiux/classes/repository/verificationRepository.dart';

class Load extends StatefulWidget {
  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> {
  void logoshow() async {
    verifyUser v=verifyUser();
    bool _if200=await v.checkPreviousToken();
    // if(!_if200)
    Navigator.pushReplacementNamed(context, '/walkthrough');
    //  else
    // Navigator.pushReplacementNamed(context, '/home');
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
