import 'package:flutter/material.dart';
import 'package:merchants/Widgets/phoneNumberFeild.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/loginPasswordFeild.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/MerchantPages/MainProductsPages/0_SoleProprietorBottonNavigationPage.dart';
import 'package:merchants/MerchantPages/LandingPages/2_LandingPage.dart';
import 'package:merchants/MerchantPages/LandingPages/4_SelectBusinessPage.dart';

class LogInSoleProprietor extends StatefulWidget{

  _LogInSoleProprietor createState()=> _LogInSoleProprietor();
}

class _LogInSoleProprietor extends State<LogInSoleProprietor>{
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async => _exitApp(context) ,
      child: Scaffold(
        //backgroundColor: Color(0xFFFF5722),
        body: Container(
          child:Padding(
            padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 50,width: 300,),
                DescriptionTextWidget(descriptor: 'Log in to Loop 4 Business'),
                SizedBox(height: 30,width: 300,),
                PhoneNumberFeild(),
                SizedBox(height: 10.0,width: 300,),
                CustomerLoginPasswordWidget(),
                SizedBox(height: 10.0,width: 300,),
                PhoneNextButton(
                    buttonText: 'LOG IN',
                    onpressed: (){

                      //Navigator.pushNamed(context, '0_SoleProprietorBottomNanigationPage');

                      Navigator.push(context,
                         MaterialPageRoute(builder: (context) => SelectBusinessPage()));

                    }),
                SizedBox(height: 10.0,width: 300,),
                PhoneNextButton(
                    buttonText: 'FORGOT PASSWORD',
                    onpressed: (){

                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<bool> _exitApp (BuildContext context) {
  return showDialog(
    context: context,
    builder:(context) => new AlertDialog(
      title: new Text('Are you sure?'),
      content: new Text('Do you want to exit an App'),
      actions: <Widget>[
     FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('NO'),
          ),
          FlatButton(onPressed: ()=>   Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage())),
          child: Text('YES')
          ),
],
    ),
  ) ??
      false;
}