import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:merchants/BusinesslLoanPages/2_30dayLoanRequestAmountPage.dart';
import 'package:merchants/MainProductsPages/0_SoleProprietorBottonNavigationPage.dart';


class ThirtyDayLandingLoansPage extends StatefulWidget{

  _ThirtyDayLandingLoansPage createState()=> _ThirtyDayLandingLoansPage();
}

class _ThirtyDayLandingLoansPage extends State<ThirtyDayLandingLoansPage>{

  @override
  Widget build(BuildContext context) {


    var loanDial = CircularPercentIndicator(
      radius: 200,
      lineWidth: 15,
      percent: 0.5,
      animation: true,
      //header: Text('Your are eligible for up to:', style: TextStyle(fontSize: 14),),
      animationDuration: 1400,
      center: Text('KES 120,000', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
      footer: Text('Activate your loan today by \n clicking on the button below:', textAlign: TextAlign.center,),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: Colors.blue,
      progressColor: Colors.orange,
    );


    final buttonLoan = new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 300.0,
                height: 40.0,
                child: new RaisedButton(
                    child: const Text('REQUEST FOR LOAN', style: TextStyle(color: Colors.white),),
                    elevation: 4.0,
                    splashColor: Colors.white,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0),),
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ThirtyDayLoanRequestPage()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
    // TODO: implement build

    //Description Text
    final descriptionText = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 50.0,
            child: new Text('You are eligible for a 30 day personal loan of up to:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight:
                FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
        ]
    );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Loan',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('30 day Loan', style: TextStyle(color: Colors.white), ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.cancel,),
              onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> SoleProprietorBottomNavPage()));
              },
            )
          ],
            backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(width: 10, height: 100,),
            descriptionText,
            SizedBox(width: 10, height: 15,),
            loanDial,
            SizedBox(width: 100,height: 30,),
            buttonLoan
          ],
        ),
      ),
    );
  }
}