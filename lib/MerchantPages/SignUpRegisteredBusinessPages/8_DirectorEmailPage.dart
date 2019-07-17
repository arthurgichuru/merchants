import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/Widgets/customerEmail.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/7_DirectorIdentityPage.dart';


class DirectorEmailPage extends StatefulWidget{
  _DirectorEmailPage createState()=> _DirectorEmailPage();
}

class _DirectorEmailPage extends State<DirectorEmailPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DirectorEmailPage',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Your Email', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> DirectorIdentityPage() ));

              }
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Padding(padding: const EdgeInsets.only(top: 75, right: 20,left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10,width: 300,),
                DescriptionTextWidget(descriptor: 'Enter your email address'),
                SizedBox(height: 10,width: 300,),
                CustomerEmail(),
                SizedBox(height: 10,width: 300,),
                PhoneNextButton(
                    buttonText: 'NEXT',
                    onpressed: (){

                      Navigator.pushNamed(context, '/9_DirectorPasswordPage');
                      // Navigator.push(context,
                      //MaterialPageRoute(builder: (context)=> CustomerPasswordPage() ));


                    })
              ],
            ),

          ),

        ),
      ),
    );
  }
}



