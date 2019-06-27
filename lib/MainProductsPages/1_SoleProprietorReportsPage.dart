import 'package:flutter/material.dart';
import 'package:merchants/Statement/1_Statement.dart';
import 'package:merchants/Widgets/chartsWidget.dart';

class ReportsPage extends StatefulWidget{

  _ReportsPage createState()=> _ReportsPage();
}

class _ReportsPage extends State<ReportsPage>{
  @override
  Widget build(BuildContext context) {


    //BankingCard
    final bankingCard = new Card(
      elevation: 10,
        //color: Colors.amber,
        child: Container(
          child: ChartsReport(),
          ),
        );


    //MTNCard
    final myMTNCard = new Card(
      elevation: 10,
      //color: Colors.amber,
      child: Container(
        //height: 180,
        padding: EdgeInsets.only(top: 10, bottom: 0, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('My MTN:', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18, fontStyle: FontStyle.normal),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Data Balance:', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.blueGrey ),),
                SizedBox(width: 10,),
                Text('5,000.00', style: TextStyle(color: Colors.black)),
              ],
            ),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('SMS:', style: TextStyle(fontWeight:FontWeight.bold , color: Colors.blueGrey),),
                SizedBox(width: 10,),
                Text('Unlimited SMS' , style: TextStyle(color: Colors.black),)
              ],
            ),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Voice:', style: TextStyle(fontWeight:FontWeight.bold , color: Colors.blueGrey),),
                SizedBox(width: 10,),
                Text('532' , style: TextStyle(color: Colors.black),)
              ],
            ),
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('BUY PLAN', style: TextStyle(color: Colors.blue),),
                    onPressed: (){
                      // Todo:Implement Top screen
                    },
                  ),
                  FlatButton(
                    child: const Text('STATEMENT', style: TextStyle(color: Colors.blue),),
                    onPressed: (){
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> Statements()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );





    return MaterialApp(
      title: 'PersonalMokashBankHomePage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(top: 0, right: 5, left: 5),
              child: ListView(
                children: <Widget>[
                  myMTNCard,
                ],
              )
          ),
        ),
      ),
    );
  }
}