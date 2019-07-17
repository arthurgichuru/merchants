import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';


class DirectorCompleteAccountSetUp extends StatefulWidget{

  _DirectorCompleteAccountSetUp createState()=> _DirectorCompleteAccountSetUp();
}

class _DirectorCompleteAccountSetUp extends State<DirectorCompleteAccountSetUp>{
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
                  DescriptionTextWidget(descriptor: 'SUCCESS! YOUR DIRECTOR ACCOUNT HAS BEEN CREATED.'),
                  SizedBox(height: 30,width: 300,),
                  CompleteSetUp,
                  SizedBox(height: 40,width: 300,),
                  PhoneNextButton(
                      buttonText: 'COMPLETE',
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