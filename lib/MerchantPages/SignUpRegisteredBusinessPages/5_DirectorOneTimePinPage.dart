
import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/oneTimePin.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/4_DirectorPhonePage.dart';



class DirectorOneTimePin extends StatefulWidget{

  _DirectorOneTimePin createState()=> _DirectorOneTimePin();
}

class _DirectorOneTimePin extends State<DirectorOneTimePin>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'DirectorOneTimePin',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('One Time pin', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back),color: Colors.white,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> DirectorPhonePage() ));
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

                      Navigator.pushNamed(context, '/6_DirectorNamePage');

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