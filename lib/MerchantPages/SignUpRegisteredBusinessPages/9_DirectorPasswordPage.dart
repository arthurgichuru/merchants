import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/Widgets/customerSetPassword.dart';
import 'package:merchants/Widgets/customerRepeatPassword.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/8_DirectorEmailPage.dart';



class DirectorPasswordPage extends StatefulWidget{
  _DirectorPasswordPage createState()=> _DirectorPasswordPage();
}

class _DirectorPasswordPage extends State<DirectorPasswordPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CustomerPasswordPage',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Your Password', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> DirectorEmailPage() ));

              }
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Padding(padding: const EdgeInsets.only(top: 75, right: 20,left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10,width: 300,),
                DescriptionTextWidget(descriptor: 'Enter your name as per your password'),
                SizedBox(height: 10,width: 300,),
                CustomerSetPasswordWidget (),
                SizedBox(height: 30,width: 300,),
                CustomerRepeatPasswordWidget(),
                SizedBox(height: 10,width: 300,),
                PhoneNextButton(
                    buttonText: 'NEXT',
                    onpressed: (){

                      Navigator.pushNamed(context, '/10_DirectorSignUpSucessPage');
                      // Navigator.push(context,
                      //MaterialPageRoute(builder: (context)=> CompleteAccountSetUp() ));

                    })
              ],
            ),

          ),

        ),
      ),
    );
  }
}