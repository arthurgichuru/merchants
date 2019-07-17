import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/Widgets/customerFirstNameFeild.dart';
import 'package:merchants/Widgets/customerLastNameFeild.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/2_OneTimePinPage.dart';




class CustomerNamePage extends StatefulWidget{
  _CustomerNamePage createState()=> _CustomerNamePage();
}

class _CustomerNamePage extends State<CustomerNamePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CustomerNamePage',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Your Name', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> OneTimePin() ));

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

                      Navigator.pushNamed(context, '/4_CustomerIdentityPage');
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