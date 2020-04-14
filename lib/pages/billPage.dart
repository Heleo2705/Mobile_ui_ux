import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/billdata.dart';
import 'package:mobileuiux/widgets/billCard.dart';
import 'package:mobileuiux/widgets/card2.dart';

class BillPage extends StatefulWidget {
  @override
  _BillPageState createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, BillsData> _data = ModalRoute.of(context).settings.arguments;

    //_data use karke parameters define karle
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black, size: 30),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Card2(_data['bill']),
              billCard(_data['bill']),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {},
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'MOVE TO PERSONAL',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
