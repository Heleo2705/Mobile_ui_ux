import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobileuiux/widgets/Drawer.dart';
import 'package:mobileuiux/widgets/NoBillsScreen.dart';
import 'package:mobileuiux/widgets/Upgrade_premium.dart';
import 'package:mobileuiux/widgets/card1.dart';
import 'package:provider/provider.dart';
import '../classes/repository/BillRepository.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BillRepository b=BillRepository();
          b.getBill();
  }

  @override
  Widget build(BuildContext context) {
    BuildContext _context = context;
    return ChangeNotifierProvider<BillRepository>(
      create: (context) => BillRepository(),
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
          body: TabBarView(
            children: <Widget>[
              Container(
                color: Colors.grey[100],
                child: Consumer<BillRepository>(builder: (context, b, child) {

                  if (b.loading) {

                    return ListView.builder(
                      itemCount: b.list.length,
                      itemBuilder: (con, i) {
                        return card1(
                          context: _context,
                          billData: b.list[i],
                          productId: b.list[i].customerId,
                          purchaseDate: b.list[i].billInfo['purchaseDate'],
                          displayCity: b.list[i].store['displayAddress']['city'],
                          displayName: b.list[i].store['displayName'],
//                          logo: b.list[i].store['brand']['logo'], //See here is stored the value of logo
                          subTotal: b.list[i].subTotal,
                        );
                      });
                  }
                  return Text(
                    "Loading",
                    style: TextStyle(color: Colors.blue),
                  );
                }),
              ),
              Container(
                color: Colors.white,
                child: buildNoBills(),
              ),
            ],
          ),
          drawer: buildDrawer(context),
        ),
      ),
    );
  }
}
