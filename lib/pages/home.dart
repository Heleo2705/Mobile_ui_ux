import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobileuiux/widgets/card1.dart';
import 'package:mobileuiux/widgets/Drawer.dart';
import 'package:mobileuiux/widgets/NoBillsScreen.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.business), text: 'Bills'),
              Tab(icon: Icon(Icons.home), text: 'Loyalty Programs'),
            ],
          ),
          title: Text(''),
//        backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.grey[100],
          child: TabBarView(
            children: <Widget>[
              Container(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                  return Card1();
                  },
                )
              ),
              buildNoBills(),
            ],
          ),
        ),
        drawer: buildDrawer(context),
      ),
    );
  }


}
