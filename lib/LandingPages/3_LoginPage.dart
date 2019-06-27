import 'package:flutter/material.dart';
import 'package:merchants/Widgets/phoneNumberFeild.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/loginPasswordFeild.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/MainProductsPages/0_SoleProprietorBottonNavigationPage.dart';

class LogInSoleProprietor extends StatefulWidget{

  _LogInSoleProprietor createState()=> _LogInSoleProprietor();
}

class _LogInSoleProprietor extends State<LogInSoleProprietor>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'LandingPage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color(0xFFFF5722),
        body: Container(
          child:Padding(
            padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 50,width: 300,),
                DescriptionTextWidget(descriptor: 'Log in to your account'),
                SizedBox(height: 30,width: 300,),
                PhoneNumberFeild(),
                SizedBox(height: 5.0,width: 300,),
                CustomerLoginPasswordWidget(),
                SizedBox(height: 5.0,width: 300,),
                PhoneNextButton(
                    buttonText: 'LOG IN',
                    onpressed: (){

                      //Navigator.pushNamed(context, '0_SoleProprietorBottomNanigationPage');

                      Navigator.push(context,
                         MaterialPageRoute(builder: (context) => SoleProprietorBottomNavPage()));

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