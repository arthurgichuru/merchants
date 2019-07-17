import 'package:flutter/material.dart';
import 'package:merchants/MerchantPages/LandingPages/1_CustomerTypePage.dart';
import 'package:merchants/MerchantPages/LandingPages/3_LoginPage.dart';


class SelectBusinessPage extends StatefulWidget {

  _SelectBusinessPage createState() =>
      _SelectBusinessPage();
}

class _SelectBusinessPage extends State<SelectBusinessPage> {


  @override
  Widget build(BuildContext context) {

    //BusinessOne
    final businessOne = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/0_SoleProprietorBottomNanigationPage');
          },
          child:
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(24),
                      child: Material(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(Icons.business, color: Colors.white,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Dagy Enterprises',
                        style: TextStyle(color: Colors.black87, fontSize: 18.0),),
                    )
                  ],
                ),
          ),
      ),
      );



    //BusinessTwo
    final businessTwo = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/0_SoleProprietorBottomNanigationPage');
        },
        child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(24),
                child: Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.business, color: Colors.white,),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Dagy Photography',
                  style: TextStyle(color: Colors.black87, fontSize: 18.0),),
              )
            ],
          ),
        ),
      ),
    );



    /*final PaymentCards = GridView.count(
      crossAxisCount: 1,
      children: <Widget>[
        businessOne,
        businessTwo,
      ],
    );
*/

    return WillPopScope(
        onWillPop: () async => Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> LogInSoleProprietor())) ,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Business'),
          ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                   children: <Widget>[
                     SizedBox(height: 10,),
                     businessOne,
                     businessTwo
                   ],
                ),
              ),
            ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () =>  Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerType() )),
              child: Icon(Icons.add)),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        )
    );



  }

}