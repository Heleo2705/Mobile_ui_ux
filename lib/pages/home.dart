import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobileuiux/widgets/Drawer.dart';
import 'package:mobileuiux/widgets/Upgrade_premium.dart';
import 'package:mobileuiux/widgets/card1.dart';
import 'package:provider/provider.dart';
import '../classes/billdata.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BillsData>(
      create: (context) => BillsData(),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.business), text: 'Bills'),
                Tab(icon: Icon(Icons.card_giftcard), text: 'Premium'),
              ],
            ),
            title: Text(''),
//        backgroundColor: Colors.black,
          ),
          body: Container(
            color: Colors.grey[100],
            child: Consumer<BillsData>(builder: (context, billsdata, child) {
              billsdata.getBill();
              return TabBarView(
                children: <Widget>[
                  Container(
                      child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Card1();
                    },
                  )),
                  buildUpgrade(),
                ],
              );
            }),
          ),
          drawer: buildDrawer(context),
        ),
      ),
    );
  }
}
