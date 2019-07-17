import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/Widgets/businessPermitNumber.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/3_CustomerNamePage.dart';
import 'package:merchants/Widgets/doingBusinessAsFeild.dart';



class BusinessIdentityPage extends StatefulWidget{

  _BusinessIdentityPage createState()=> _BusinessIdentityPage();
}

class _BusinessIdentityPage extends State<BusinessIdentityPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BusinessIdPage',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Your Business Identity', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> CustomerNamePage() ));
              }
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Padding(padding: const EdgeInsets.only(top: 75, right: 20,left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10,width: 300,),
                DescriptionTextWidget(descriptor: 'Enter your business name'),
                SizedBox(height: 10,width: 300,),
                CustomerDoingBusinessAs(),
                SizedBox(height: 10,width: 300,),
                BusinessPermitNumberFeild(),
                SizedBox(height: 20,width: 300,),
                PhoneNextButton(
                    buttonText: 'NEXT',
                    onpressed: (){

                      Navigator.pushNamed(context, '/7_CustomerEmailPage');


                      //Navigator.push(context,
                          //MaterialPageRoute(builder: (context)=> BusinessIdentityLocationPage() ));

                    })
              ],
            ),

          ),

        ),
      ),
    );
  }
}