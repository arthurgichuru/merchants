import 'package:flutter/material.dart';
import 'package:merchants/Widgets/chartsWidget.dart';



class SalesReport extends StatefulWidget {
  _SalesReport createState() => _SalesReport();
}

class _SalesReport extends State<SalesReport> {


  @override
  Widget build(BuildContext context) {


    //Sales Report
    final SalesReport = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => ChartsReport())
            );
          },
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Material(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.equalizer, color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Sales Report',
                    style: TextStyle(color: Colors.black87, fontSize: 12.0),),
                )
              ],
            ),
          )
      ),
    );


    //CashFlows
    final CashFlows = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => ChartsReport())
          );
        },
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.graphic_eq, color: Colors.white,),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('Cash Flows',
                  style: TextStyle(color: Colors.black87, fontSize: 12.0),),
              )
            ],
          ),
        ),
      ),
    );


    final PaymentCards = GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        SalesReport,
        CashFlows,
      ],
    );


    return MaterialApp(
        title: 'PersonalMokashBankPaymentsPage',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: PaymentCards
        )
    );
  }
}

