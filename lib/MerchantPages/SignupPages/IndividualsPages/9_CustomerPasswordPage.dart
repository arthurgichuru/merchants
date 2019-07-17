import 'package:flutter/material.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/Widgets/customerSetPassword.dart';
import 'package:merchants/Widgets/customerRepeatPassword.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/7_CustomerEmailPage.dart';



class CustomerPasswordPage extends StatefulWidget{
  _CustomerPasswordPage createState()=> _CustomerPasswordPage();
}

final sucessDescription = Text('Your account has been sucessfully created.');

class _CustomerPasswordPage extends State<CustomerPasswordPage>{
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
                    MaterialPageRoute(builder: (context)=> CustomerEmailPage() ));

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
                    buttonText: 'COMPLETE',
                    onpressed: (){

                      //Navigator.pushNamed(context, '/10_CustomerSuccessPage');

                      showDialog(
                          context: context,
                        builder: (BuildContext context) => _completeDialog(context),

                      );

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

  Widget _completeDialog(BuildContext contex){
    return AlertDialog(
      title: const Text('SUCCESS!'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          sucessDescription,
        ],
      ),
      actions: <Widget>[
        FlatButton(
            onPressed: (){
          //Navigator.of(context).pop();
          Navigator.pushNamed(context, '/10_CustomerSuccessPage');
        },
            child: Text('Ok'))
      ],
    );
  }
}

