import 'package:flutter/material.dart';
import 'package:merchants/Widgets/phoneNumberFeild.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/3_RegisteredBusinessRoles.dart';


class DirectorPhonePage extends StatefulWidget{

  _DirectorPhonePage createState()=> _DirectorPhonePage();
}

class _DirectorPhonePage extends State<DirectorPhonePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'DirectorPhonePage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Enter Phone', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> RegisteredBusinessRoles() ));
              }
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 75, right: 20, left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10,width: 300,),
                DescriptionTextWidget(descriptor: 'Enter your phone'),
                SizedBox(height: 20,width: 300,),
                PhoneNumberFeild(),
                SizedBox(height: 70,width: 300,),
                PhoneNextButton(
                    buttonText: 'NEXT',
                    onpressed: (){

                      Navigator.pushNamed(context, '/5_DirectorOneTimePinPage');

                      // Navigator.push(context,
                      //MaterialPageRoute(builder: (context)=> OneTimePin() ));
                    }
                ),
              ],
            ),


          ),
        ),
      ),
    );
  }
}