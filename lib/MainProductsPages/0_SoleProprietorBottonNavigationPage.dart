import 'package:flutter/material.dart';
import 'package:merchants/MainProductsPages/1_SoleProprietorReportsPage.dart';
import 'package:merchants/MainProductsPages/2_SoleProprietorBankPaymentsPage.dart';
import 'package:merchants/MainProductsPages/3_SoleProprietorMyBankPage.dart';
import 'package:merchants/MainProductsPages/4_SoleProprietorDealsPage.dart';
import 'package:merchants/MainProductsPages/6_SoleProprietorPOSPage.dart';
import 'package:merchants/ProfilePage/1_ProfilePage.dart';
import 'package:merchants/LandingPages/3_LoginPage.dart';




class SoleProprietorBottomNavPage extends StatefulWidget{

  _SoleProprietorBottomNavPage  createState()=> _SoleProprietorBottomNavPage ();
}

class _SoleProprietorBottomNavPage  extends State<SoleProprietorBottomNavPage>{

  int _currentIndex = 0;

  final List<Widget>_children = [
    POSPage(),
    ReportsPage(),
    BankPaymentsPage(),
    BankPage(),
    DealsPage(),
  ];

  @override
  Widget build(BuildContext context) {


    return WillPopScope(
      onWillPop: () async => Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> LogInSoleProprietor())) ,
      child:  Scaffold(
        appBar: AppBar(
          title: Text('Loop 4 Business', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.help,color: Colors.white,),
                onPressed: (){
                  //Todo implement help
                }),
            IconButton(
                icon: Icon(Icons.perm_identity,color: Colors.white,),
                tooltip: 'Your Profile',
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ProfilePage()));
                }
            ),
          ],
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: onTabTabbed,
          currentIndex: _currentIndex,
          items: [

            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.black54,),
                title: Text('Sell', style: TextStyle(color: Colors.black54),)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.equalizer, color: Colors.black54,),
              title: Text('Status',style: TextStyle(color: Colors.black54),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on, color: Colors.black54,),
                title: Text('Payments', style: TextStyle(color: Colors.black54),),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance, color: Colors.black54,),
                title: Text('Bank', style: TextStyle(color: Colors.black54),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_android, color: Colors.black54,),
                title: Text('Deals', style: TextStyle(color: Colors.black54),)
            ),


          ],
        ),
      ),
    );
  }

  void onTabTabbed(int index){
    setState(() {
      _currentIndex =index;
    });
  }
}