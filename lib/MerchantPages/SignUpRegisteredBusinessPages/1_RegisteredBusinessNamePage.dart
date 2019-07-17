import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/MerchantPages/LandingPages/1_CustomerTypePage.dart';
import 'package:merchants/Widgets/businessNameFeild.dart';
import 'package:merchants/Widgets/businessPhysicallAddressFeild.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/2_RegisteredBusinessContactsPage.dart';
import 'package:merchants/Widgets/businessPermitNumber.dart';
import 'package:merchants/Widgets/kenyaRevenueAuthorityFeild.dart';




class RegisteredBusinessNamePage extends StatefulWidget{

  _RegisteredBusinessNamePage createState()=> _RegisteredBusinessNamePage();
}

class _RegisteredBusinessNamePage extends State<RegisteredBusinessNamePage>{
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
                    MaterialPageRoute(builder: (context)=> CustomerType() ));
              }
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Padding(padding: const EdgeInsets.only(top: 40, right: 20,left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10,width: 300,),
                DescriptionTextWidget(descriptor: 'Provide your business details.'),
                SizedBox(height: 10,width: 300,),
                BusinessNameWidget(),
                SizedBox(height: 10,width: 300,),
                BusinessPermitNumberFeild(),
                SizedBox(height: 10,width: 300,),
                KenyaRevenueAuthorityFeild(),
                SizedBox(height: 10,width: 300,),
                RegisteredBusinessPhysicalAddress(),
                SizedBox(height: 20,width: 300,),
                PhoneNextButton(
                    buttonText: 'NEXT',
                    onpressed: (){

                     // Navigator.pushNamed(context, '/RegisteredBusinessContactsPage');
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisteredBusinessContactsPage() ));

                    })
              ],
            ),

          ),

        ),
      ),
    );
  }
}