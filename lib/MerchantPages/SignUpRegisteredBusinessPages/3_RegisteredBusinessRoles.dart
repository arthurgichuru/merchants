import 'package:flutter/material.dart';
import 'package:merchants/Widgets/nextButton.dart';
import 'package:merchants/Widgets/descriptionText.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/4_DirectorPhonePage.dart';

class RegisteredBusinessRoles extends StatefulWidget {
  _RegisteredBusinessRoles createState() => _RegisteredBusinessRoles();
}

class _RegisteredBusinessRoles extends State<RegisteredBusinessRoles> {
  int selectedRadio;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio = 1;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
//Business Field
    final businessRadio = Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Radio(
              value: 1,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val);
              }),
          Text(
            'Director/ Owner',
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Radio(
              value: 2,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val);
              }
            //value: 1,
          ),
          Text(
            'Administrator/Manager ',
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: Radio(
                value: 3,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(val);
                }
              //value: 2,
            ),
          ),
          Text(
            'Employee',
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
    ]);


    return MaterialApp(
      title: 'CustomerType',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text(
              'Your role',
              style: TextStyle(color: Colors.white),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/2_LandingPage');
              },
            ),
            backgroundColor: Colors.blue
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(top: 75, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                    width: 300,
                  ),
            DescriptionTextWidget(
              descriptor: 'What is your role in the business?',
            ),
                  SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  businessRadio,
                  SizedBox(
                    height: 70,
                    width: 300,
                  ),
                  PhoneNextButton(
                      buttonText: 'NEXT',
                      onpressed: () {
                        if (selectedRadio == 1) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => DirectorPhonePage()));
                        } else {
                          if (selectedRadio == 2) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => DirectorPhonePage()));
                          } else {
                            if (selectedRadio == 3) {
                              //Navigator.pushNamed(context, '/1_PhonePage');
                            }
                          }
                        }
                      }
                  ),
                ],
              )),
        ),
      ),
    );
  }
}


