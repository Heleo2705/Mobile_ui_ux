import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/Item.dart';

class BuildDrawerHeader extends StatefulWidget {
  final Item selectedBill;
  final List<Item> bills;
  BuildDrawerHeader({this.bills,this.selectedBill});
  @override
  _BuildDrawerHeaderState createState() => _BuildDrawerHeaderState(bills: bills, selectedBill: selectedBill);
}

class _BuildDrawerHeaderState extends State<BuildDrawerHeader> {
  Item selectedBill;
  List<Item> bills;
  _BuildDrawerHeaderState({this.selectedBill, this.bills});
  @override
  void initState() {
    super.initState();
    selectedBill = bills.elementAt(0);
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: DrawerHeader(
        margin: EdgeInsets.all(0.0),
        padding: EdgeInsets.all(0.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              CircleAvatar(
                backgroundImage:
                AssetImage('assets/images/avtar.png'),
                radius: 70.0,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'JHON DOE',
                style: TextStyle(
//                          color: Colors.white,
                    fontSize: 20),
              ),
              SizedBox(
                height: 40.0,
              ),
//              Text(
//                'DEFAULT BILL',
//                style: TextStyle(color: Colors.white24, fontSize: 13),
//              ),
//              SizedBox(
//                height: 10,
//              ),
//              Container(
//                width: 300,
//                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
//                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
//                decoration: BoxDecoration(
//                    border: Border.all(
//                      color: Colors.white38,
//                    )),
//                child: DropdownButtonHideUnderline(
//                  child: ButtonTheme(
//                    alignedDropdown: true,
//                    child: DropdownButton<Item>(
//                      icon: Icon(
//                        Icons.keyboard_arrow_down,
//                        size: 40,
//                        color: Colors.white38,
//                      ),
//                      value: selectedBill,
//                      onChanged: (Item value) {
//                        setState(() {
//                          selectedBill = value;
//                        });
//                      },
//                      items: bills.map((Item bill) {
//                        return DropdownMenuItem<Item>(
//                          value: bill,
//                          child: Row(
//                            children: <Widget>[
//                              bill.icon,
//                              SizedBox(
//                                width: 10,
//                              ),
//                              Text(
//                                bill.name,
//                                style: TextStyle(
//                                  color: Colors.white54,
//                                  fontSize: 20,
//                                ),
//                              )
//                            ],
//                          ),
//                        );
//                      }).toList(),
//                    ),
//                  ),
//                ),
//              ),
            ],
          ),
        ),
        decoration: BoxDecoration(color: Colors.black),
      ),
    );
  }
}
