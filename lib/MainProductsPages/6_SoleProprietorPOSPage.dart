import 'package:flutter/material.dart';
import 'package:merchants/Widgets/merchantPOS.dart';


class POSPage extends StatefulWidget{
  _POSPage createState()=> _POSPage();
}

class _POSPage extends State<POSPage>{
  @override
 Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'SoleProprietorPage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: MerchantPOS(),
      ),
    );
  }
}