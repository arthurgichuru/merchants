import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';


class CompleteAccountSetUp extends StatefulWidget{

  _CompleteAccountSetUp createState()=> _CompleteAccountSetUp();
}

class _CompleteAccountSetUp extends State<CompleteAccountSetUp>{
  @override
  Widget build(BuildContext context) {

    //CompleteSetup
    final CompleteSetUp = CircleAvatar(
      maxRadius: 70,
      backgroundColor: Colors.blue,
      child: Icon(Icons.thumb_up, size: 40.0, color: Colors.white,),
    );



    return MaterialApp(
      title: 'AccountSetUpComplete',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Account set up', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(top: 150, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10,width: 300,),
                  DescriptionTextWidget(descriptor: 'WELCOME TO LOOP.'),
                  SizedBox(height: 30,width: 300,),
                  CompleteSetUp,
                  SizedBox(height: 40,width: 300,),
                  PhoneNextButton(
                      buttonText: 'SIGN IN',
                      onpressed: (){

                        Navigator.pushNamed(context, '/3_LoginPage');

                       // Navigator.push(context,
                           //MaterialPageRoute(builder: (context)=> LogInSoleProprietor() ));
                      })
                ],
              )
          ),
        ),
      ),
    );
  }
}