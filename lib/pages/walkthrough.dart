import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileuiux/widgets/WalkthoughInput.dart';


class WalkThrough extends StatefulWidget {
  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Center(
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/Mainsection.png'),
              ),
            ),
            //buildWalkthroughBackground(),
            BuildWalkthroughInput(),
          ],
        )
      ),
    );
  }



}
