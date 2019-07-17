import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/Widgets/customerFirstNameFeild.dart';
import 'package:merchants/Widgets/customerLastNameFeild.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/5_DirectorOneTimePinPage.dart';




class DirectorNamePage extends StatefulWidget{
  _DirectorNamePage createState()=> _DirectorNamePage();
}

class _DirectorNamePage extends State<DirectorNamePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DirectorNamePage',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Your Name', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> DirectorOneTimePin() ));

              }
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Padding(padding: const EdgeInsets.only(top: 75, right: 20,left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10,width: 300,),
                DescriptionTextWidget(descriptor: 'Enter your name as per your ID'),
                SizedBox(height: 10,width: 300,),
                CustomerFirstNameWidget(),
                SizedBox(height: 10,width: 300,),
                CustomerLastNameWidget(),
                SizedBox(height: 10,width: 300,),
                PhoneNextButton(
                    buttonText: 'NEXT',
                    onpressed: (){

                      Navigator.pushNamed(context, '/7_DirectorIdPage');
                      // Navigator.push(context,
                      // MaterialPageRoute(builder: (context)=> CustomerIdentityPage() ));
                    })
              ],
            ),

          ),

        ),
      ),
    );
  }
}