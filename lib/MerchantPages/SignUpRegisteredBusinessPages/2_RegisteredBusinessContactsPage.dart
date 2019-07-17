import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/1_RegisteredBusinessNamePage.dart';
import 'package:merchants/Widgets/businessEmail.dart';
import 'package:merchants/Widgets/businessPhoneNumberFeild.dart';




class RegisteredBusinessContactsPage extends StatefulWidget{

  _RegisteredBusinessContactsPage createState()=> _RegisteredBusinessContactsPage();
}

class _RegisteredBusinessContactsPage extends State<RegisteredBusinessContactsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BusinessContactsPage',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Your Business Contacts', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> RegisteredBusinessNamePage() ));
              }
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Padding(padding: const EdgeInsets.only(top: 75, right: 20,left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10,width: 300,),
                DescriptionTextWidget(descriptor: 'Enter your business contacts'),
                SizedBox(height: 10,width: 300,),
                RegisteredBusinessPhoneNumberFeild(),
                SizedBox(height: 10,width: 300,),
                RegisteredBusinessEmail(),
                SizedBox(height: 20,width: 300,),
                PhoneNextButton(
                    buttonText: 'NEXT',
                    onpressed: (){

                      Navigator.pushNamed(context, '/3_RegisteredBusinessRolesPage');


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