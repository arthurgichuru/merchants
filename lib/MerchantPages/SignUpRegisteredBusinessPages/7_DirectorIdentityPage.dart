import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/Widgets/IdnumberFeild.dart';
import 'package:merchants/Widgets/customerIdentityDropDown.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/6_DirectorNamePage.dart';



class DirectorIdentityPage extends StatefulWidget{

  _DirectorIdentityPage createState()=> _DirectorIdentityPage();
}

class _DirectorIdentityPage extends State<DirectorIdentityPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DirectorIdPage',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Your Identity', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> DirectorNamePage() ));
              }
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Padding(padding: const EdgeInsets.only(top: 75, right: 20,left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10,width: 300,),
                DescriptionTextWidget(descriptor: 'Select your Id document'),
                SizedBox(height: 20,width: 300,),
                CustomerIdentityDropDrown(),
                SizedBox(height: 30,width: 300,),
                IdNumberFeild(),
                SizedBox(height: 20,width: 300,),
                PhoneNextButton(
                    buttonText: 'NEXT',
                    onpressed: (){

                      Navigator.pushNamed(context, '/8_DirectorEmailPage');

                      //Navigator.push(context,
                      //MaterialPageRoute(builder: (context)=> BusinessIdentityPage() ));


                    })
              ],
            ),

          ),

        ),
      ),
    );
  }
}