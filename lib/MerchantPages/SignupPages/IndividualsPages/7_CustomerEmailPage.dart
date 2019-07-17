import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/Widgets/customerEmail.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/5_BusinessIdentityPage.dart';


class CustomerEmailPage extends StatefulWidget{
  _CustomerEmailPage createState()=> _CustomerEmailPage();
}

class _CustomerEmailPage extends State<CustomerEmailPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CustomerEmailPage',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Your Email', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> BusinessIdentityPage() ));

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
                SizedBox(height: 20,width: 300,),
                CustomerEmail(),
                SizedBox(height: 20,width: 300,),
                PhoneNextButton(
                    buttonText: 'NEXT',
                    onpressed: (){

                     Navigator.pushNamed(context, '/9_CustomerPasswordPage');
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



