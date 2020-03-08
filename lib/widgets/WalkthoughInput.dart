import 'package:flutter/material.dart';
import 'package:mobileuiux/classes/Item.dart';

class BuildWalkthroughInput extends StatefulWidget {
  @override
  _BuildWalkthroughInputState createState() => _BuildWalkthroughInputState();
}

class _BuildWalkthroughInputState extends State<BuildWalkthroughInput> {
  Item dropdown ;
  List<Item> menu= [
    Item(
      icon: Icon(
        Icons.flag,
        color: Colors.grey[800],
      ),
      name: '+91',
    ),
    Item(
      icon: Icon(
        Icons.flag,
        color: Colors.grey[800],
      ),

      name: '+93',
    ),
    Item(
      icon: Icon(
        Icons.flag,
        color: Colors.grey[800],
      ),
      name: '+94',
    ),
  ].toList();


  @override
  void initState() {
    super.initState();
    dropdown = menu.elementAt(0);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.grey[50],
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0,
              spreadRadius: 0.5,
            )
          ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'MOBILE',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 10,),

          //This includes the contact number input part-
          //a dropDownList and a textfield
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              DropdownButton<Item>(
                value: dropdown,
                iconSize: 30,
                isDense: false,
                iconEnabledColor: Colors.grey[800],
                style: TextStyle(
                  color: Colors.grey[800],
                ),
                underline: Container(
                  height: 2,
                  color: Colors.grey[800],
                ),
                onChanged: (Item s){
                  setState(() {
                    dropdown = s;
                  });
                },
                items: menu.map((Item drop){
                  return DropdownMenuItem<Item>(
                    value: drop,
                    child: Row(
                        children: <Widget>[
                          drop.icon,
                          Text(
                            drop.name,
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 20,
                            ),
                          )
                        ]
                    ),
                  );
                }).toList(),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Container(
                  child: TextField(
                    controller: TextEditingController(),
                    onSubmitted: (String s){},
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: '  9055112423',
                        hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 20
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey[800],
                                width: 2
                            )
                        )
                    ),

                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),

          //The continue button
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  padding: EdgeInsets.all(25),
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),


          //The text part with hyperlinks for T&C and Privacy Policy
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'By tapping continue, you agree to our ',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: (){},
                    ),
                    Text(
                      ' and',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,4,0,0),
                  child: GestureDetector(
                    child: Text(
                      'Privacy and Policy',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: (){},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


