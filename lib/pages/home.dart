import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobileuiux/widgets/Drawer.dart';
import 'package:mobileuiux/widgets/Upgrade_premium.dart';
import 'package:mobileuiux/widgets/card1.dart';


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
              Tab(icon: Icon(Icons.card_giftcard), text: 'Premium'),
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
              buildUpgrade(),
            ],
          ),
        ),
        drawer: buildDrawer(context),
      ),
    );
  }


}





Future<BillsData> getBill() async {
  String url =
      'http://localhost:9898/api/v1/bills/search/by-date-range?startDate=2020-04-02&endDate=2020-04-03';

  final response = await http.get(url, headers: {
    "Authorization": "Bearer YOUR-TOKEN-HERE",
    "Content-Type": " application/json",
    "Accept": "application/json"
  });

  if (response.statusCode == 200) {
    return BillsData.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to Load Data');
  }
}

class BillsData {
  int id;
  int customerId;
  String customerName;
  String customerEmail;
  int customerGstn;
  int loyaltyNumber;
  String loyaltyDescription;
  String customerAddress;
  int billInfo;
  int posInfo;
  int item;
  int subTotal;
  int totalSaving;
  int billDiscount;
  int totalQuantity;
  int paymentInfo;
  int uniqueKey;

  // c > created on
  int ccenturyOfEra;
  int cyearOfEra;
  int cyearOfCentury;
  int cweekyear;
  int cmonthOfYear;
  int cweekOfWeekYear;
  int chourOfDay;
  int cminuteOfHour;
  int csecondOfMinute;
  int cmillisOfSecond;
  int cera;
  int cdayOfYear;
  int cdayOfWeek;
  int cdayOfMonth;
  int cyear;
  int cminuteOfDay;
  int csecondOfDay;
  int cmillisOfDay;
  bool czonefixed;
  String czoneid;
  bool cuncachedZonecachable;
  bool cuncachedZonefixed;
  String cuncachedZoneid;
  int cmillis;
  int cafterNow;
  bool cbeforeNow;
  bool cequalNow;

  //l > Last Mpdofied on
  int lcenturyOfEra;
  int lyearOfEra;
  int lyearOfCentury;
  int lweekyear;
  int lmonthOfYear;
  int lweekOfWeekYear;
  int lhourOfDay;
  int lminuteOfHour;
  int lsecondOfMinute;
  int lmillisOfSecond;
  int lera;
  int ldayOfYear;
  int ldayOfWeek;
  int ldayOfMonth;
  int lyear;
  int lminuteOfDay;
  int lsecondOfDay;
  int lmillisOfDay;
  bool lzonefixed;
  String lzoneid;
  bool luncachedZonecachable;
  bool luncachedZonefixed;
  String luncachedZoneid;
  int lmillis;
  int lafterNow;
  bool lbeforeNow;
  bool lequalNow;

  int taxes;
  int otherDiscounts;
  String store;
  int brandId;
  String attributes;
  String feedback;
  String clientInfo;
  String prescription;
  int checkoutOtp;
  String offers;

  BillsData({
    this.id,
    this.customerId,
    this.customerName,
    this.customerEmail,
    this.customerGstn,
    this.loyaltyNumber,
    this.loyaltyDescription,
    this.customerAddress,
    this.billInfo,
    this.posInfo,
    this.item,
    this.subTotal,
    this.totalSaving,
    this.billDiscount,
    this.totalQuantity,
    this.paymentInfo,
    this.uniqueKey,

    //Created on.....
    this.ccenturyOfEra,
    this.cyearOfEra,
    this.cyearOfCentury,
    this.cweekyear,
    this.cmonthOfYear,
    this.cweekOfWeekYear,
    this.chourOfDay,
    this.cminuteOfHour,
    this.csecondOfMinute,
    this.cmillisOfSecond,
    this.cera,
    this.cdayOfYear,
    this.cdayOfWeek,
    this.cdayOfMonth,
    this.cyear,
    this.cminuteOfDay,
    this.csecondOfDay,
    this.cmillisOfDay,
    this.czonefixed,
    this.cuncachedZonecachable,
    this.cuncachedZonefixed,
    this.cuncachedZoneid,
    this.czoneid,
    this.cmillis,
    this.cafterNow,
    this.cbeforeNow,
    this.cequalNow,

    //Last Modified on...
    this.lcenturyOfEra,
    this.lyearOfEra,
    this.lyearOfCentury,
    this.lweekyear,
    this.lmonthOfYear,
    this.lweekOfWeekYear,
    this.lhourOfDay,
    this.lminuteOfHour,
    this.lsecondOfMinute,
    this.lmillisOfSecond,
    this.lera,
    this.ldayOfYear,
    this.ldayOfWeek,
    this.ldayOfMonth,
    this.lyear,
    this.lminuteOfDay,
    this.lsecondOfDay,
    this.lmillisOfDay,
    this.lzonefixed,
    this.luncachedZonecachable,
    this.luncachedZonefixed,
    this.luncachedZoneid,
    this.lzoneid,
    this.lmillis,
    this.lafterNow,
    this.lbeforeNow,
    this.lequalNow,


    this.taxes,
    this.otherDiscounts,
    this.store,
    this.brandId,
    this.attributes,
    this.feedback,
    this.clientInfo,
    this.prescription,
    this.checkoutOtp,
    this.offers,
  });

  factory BillsData.fromJson(Map<String, dynamic> json) {
    var billsData = BillsData(
        id: json['id'],
        customerId: json['customerInfo']['customerId'],
        customerName: json['customerInfo']['customerName'],
        customerEmail: json['customerInfo']['customerEmail'],
        customerGstn: json['customerInfo']['customerGstn'],
        loyaltyNumber: json['customerInfo']['loyaltyNuber'],
        loyaltyDescription: json['customerInfo']['loyaltyDescription'],
        customerAddress: json['customerInfo']['customerAddress'],
        billInfo: json['billInfo'],
        posInfo: json['posInfo'],
        item: json['items'],
        subTotal: json['subTotal'],
        totalSaving: json['totalSaving'],
        billDiscount: json['billDiscount'],
        totalQuantity: json['totalQuantity'],
        paymentInfo: json['paymentInfo'],
        uniqueKey: json['uniqueKey'],

        //Created on data...

            ccenturyOfEra:json['createdOn']['centuryOfEra'],
            cyearOfEra:json['createdOn']['yearOfEra'],
            cyearOfCentury:json['createdOn']['yearOfCentury'],
            cweekyear:json['createdOn']['weekyear'],
            cmonthOfYear:json['createdOn']['monthOfYear'],
            cweekOfWeekYear:json['createdOn']['weekOfWeekYear'],
            chourOfDay:json['createdOn']['hourOfDay'],
            cminuteOfHour:json['createdOn']['minuteOfHour'],
            csecondOfMinute:json['createdOn']['secondOfMinute'],
            cmillisOfSecond:json['createdOn']['millisOfSecond'],
            cera:json['createdOn']['era'],
            cdayOfYear:json['createdOn']['dayOfYear'],
            cdayOfWeek:json['createdOn']['dayOfWeek'],
            cdayOfMonth:json['createdOn']['dayOfMonth'],
            cyear:json['createdOn']['year'],
            cminuteOfDay:json['createdOn']['minuteOfDay'],
            csecondOfDay:json['createdOn']['secondOfDay'],
            cmillisOfDay:json['createdOn']['millisOfDay'],
            czonefixed:json['createdOn']['zone']['fixed'],
            cuncachedZonecachable:json['createdOn']['zone']['cachable'],
            cuncachedZonefixed:json['createdOn']['fixed'],
            cuncachedZoneid:json['createdOn']['id'],
            czoneid:json['createdOn']['zone']['id'],
            cmillis:json['createdOn']['millis'],
            cafterNow:json['createdOn']['afterNow'],
            cbeforeNow:json['createdOn']['beforeNow'],
            cequalNow:json['createdOn']['equalNow'],





        //Last MOdifie on data....


            lcenturyOfEra:json['lastModidiedOn']['centuryOfEra'],
            lyearOfEra:json['lastModidiedOn']['yearOfEra'],
            lyearOfCentury:json['lastModidiedOn']['yearOfCentury'],
            lweekyear:json['lastModidiedOn']['weekyear'],
            lmonthOfYear:json['lastModidiedOn']['monthOfYear'],
            lweekOfWeekYear:json['lastModidiedOn']['weekOfWeekYear'],
            lhourOfDay:json['lastModidiedOn']['hourOfDay'],
            lminuteOfHour:json['lastModidiedOn']['minuteOfHour'],
            lsecondOfMinute:json['lastModidiedOn']['secondOfMinute'],
            lmillisOfSecond:json['lastModidiedOn']['millisOfSecond'],
            lera:json['lastModidiedOn']['era'],
            ldayOfYear:json['lastModidiedOn']['dayOfYear'],
            ldayOfWeek:json['lastModidiedOn']['dayOfWeek'],
            ldayOfMonth:json['lastModidiedOn']['dayOfMonth'],
            lyear:json['lastModidiedOn']['year'],
            lminuteOfDay:json['lastModidiedOn']['minuteOfDay'],
            lsecondOfDay:json['lastModidiedOn']['secondOfDay'],
            lmillisOfDay:json['lastModidiedOn']['millisOfDay'],
            lzonefixed:json['lastModidiedOn']['zone']['fixed'],
            luncachedZonecachable:json['lastModidiedOn']['zone']['cachable'],
            luncachedZonefixed:json['lastModidiedOn']['fixed'],
            luncachedZoneid:json['lastModidiedOn']['id'],
            lzoneid:json['lastModidiedOn']['zone']['id'],
            lmillis:json['lastModidiedOn']['millis'],
            lafterNow:json['lastModidiedOn']['afterNow'],
            lbeforeNow:json['lastModidiedOn']['beforeNow'],
            lequalNow:json['lastModidiedOn']['equalNow'],





        taxes: json['taxes'],
        otherDiscounts: json['otherDiscounts'],
        store: json['store'],
        brandId: json['brandId'],
        attributes: json['attributes'],
        feedback: json['feedback'],
        clientInfo: json['clientInfo'],
        prescription: json['perscripion'],
        checkoutOtp: json['checkoutOtp'],
        offers: json['offers']);


    return billsData;
  }
}

