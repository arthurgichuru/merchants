import 'package:flutter/material.dart';
import 'package:merchants/Widgets/nextButton.dart';

class CollectMoneyPage extends StatefulWidget {
  _CollectMoneyPage createState() => _CollectMoneyPage();

}

class _CollectMoneyPage extends State<CollectMoneyPage> {

  int selectedRadio;

  @override
  void initState() {
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
    final paymentFeild = Text('COLLECTION AMOUNT');


    final paymentsRadio = Column(children: <Widget>[
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
            'M-PESA',
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
            'CASH',
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
            'CARDS',
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
    ]);


    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        title: 'CustomerType',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: true,
              title: Text(
                'Select Account', style: TextStyle(color: Colors.white),),
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white,),
                onPressed: () {
                  Navigator.pop(context, false);
                },),
              backgroundColor: Colors.blue),
          body: Container(
            child: Padding(
                padding: const EdgeInsets.only(top: 75, right: 20, left: 20),
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 10, width: 300,),

                    paymentsRadio,
                    SizedBox(height: 70, width: 300,),
                    PhoneNextButton(
                        buttonText: 'NEXT',
                        onpressed: () {
                          if (selectedRadio == 1) {
                            // Navigator.push(context,
                            // MaterialPageRoute(builder: (context) => PhonePage()));
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

}
