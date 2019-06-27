
import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/oneTimePin.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/SignupPages/1_PhonePage.dart';
import 'package:merchants/SignupPages/3_CustomerNamePage.dart';


class OneTimePin extends StatefulWidget{

  _OneTimePin createState()=> _OneTimePin();
}

class _OneTimePin extends State<OneTimePin>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'OneTimePin',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('One Time pin', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back),color: Colors.white,
              onPressed: (){
                Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> PhonePage() ));
              }
              ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Padding(padding: const EdgeInsets.only(top: 75, right: 20, left: 20),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 10,width: 300,),
              DescriptionTextWidget(descriptor: 'Enter One Time Pin',),
              SizedBox(height: 10,width: 300,),
              OneTimePinWidget(),
              SizedBox(height: 70,width: 300,),
              PhoneNextButton(
                  buttonText: 'NEXT',
                  onpressed: (){

                    Navigator.pushNamed(context, '/3_CustomerNamePage');

                    //Navigator.push(context,
                        //MaterialPageRoute(builder: (context)=> CustomerNamePage() ));

                  })
            ],
          ),
          ),
        ),
      ),
    );
  }
}