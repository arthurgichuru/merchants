import 'package:flutter/material.dart';

class ManagePage extends StatefulWidget{

  _ManagePage createState()=> _ManagePage();
}

class _ManagePage extends State<ManagePage>{
  @override
  Widget build(BuildContext context) {


    //businessDetails
    final businessDetails = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
          onTap: () {
            //_settingModalBottomSheetSendMoney(context);
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
                      child: Icon(Icons.dashboard, color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Business Details',
                    style: TextStyle(color: Colors.black87, fontSize: 12.0),),
                )
              ],
            ),
          )
      ),
    );

    //bank Accounts
    final bankAccounts = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
          onTap: () {
            //_settingModalBottomSheetSendMoney(context);
          },
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Material(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.apps, color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Bank Accounts',
                    style: TextStyle(color: Colors.black87, fontSize: 12.0),),
                )
              ],
            ),
          )
      ),
    );

    //users
    final users = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
          onTap: () {
            //_settingModalBottomSheetSendMoney(context);
          },
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Material(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.perm_identity, color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Users',
                    style: TextStyle(color: Colors.black87, fontSize: 12.0),),
                )
              ],
            ),
          )
      ),
    );

    //users
    final accountSettings = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
          onTap: () {
            //_settingModalBottomSheetSendMoney(context);
          },
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Material(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.bubble_chart, color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Account Settings',
                    style: TextStyle(color: Colors.black87, fontSize: 12.0),),
                )
              ],
            ),
          )
      ),
    );

    final PaymentCards = GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        businessDetails,
        bankAccounts,
        users,
        accountSettings
      ],
    );

    return MaterialApp(
      title: 'PersonalMokashMyMtnPage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:PaymentCards,
        ),
    );

  }

  /*void _settingModalBottomSheet(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.dashboard, color: Colors.green,),
                    title: new Text('Buy Bundle'),
                    onTap: () => {}
                ),
                new ListTile(
                  leading: new Icon(Icons.backup, color: Colors.orangeAccent,),
                  title: new Text('Buy Data',),
                  onTap: () => {},
                ),
                new ListTile(
                  leading: new Icon(Icons.add_to_home_screen,color: Colors.deepPurpleAccent,),
                  title: new Text('Buy Airtime'),
                  onTap: () => {},
                ),
                new ListTile(
                  leading: new Icon(Icons.call,color: Colors.deepPurpleAccent,),
                  title: new Text('Call Contact Center'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        }
    );
  }*/
}