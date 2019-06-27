import 'package:flutter/material.dart';
import 'package:merchants/SignupPages/1_PhonePage.dart';
import 'package:merchants/Widgets/nextButton.dart';

class CustomerType extends StatefulWidget {
  _CustomerType createState() => _CustomerType();
}

class _CustomerType extends State<CustomerType> {
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
            'Trading as myself',
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
            'Registered small business',
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
            'Company',
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
            'Select Account',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context, false);
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
                          MaterialPageRoute(builder: (context) => PhonePage()));
                    } else {
                      if (selectedRadio == 2) {
                        //Navigator.pushNamed(context, '/1_PhonePage');
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


