import 'package:flutter/material.dart';
import 'package:merchants/LandingPages/1_CustomerTypePage.dart';
import 'package:merchants/SignupPages/1_PhonePage.dart';
import 'package:merchants/SignupPages/2_OneTimePinPage.dart';
import 'package:merchants/SignupPages/3_CustomerNamePage.dart';
import 'package:merchants/SignupPages/4_CustomerIdentityPage.dart';
import 'package:merchants/SignupPages/5_BusinessIdentityPage.dart';
import 'package:merchants/SignupPages/6_BusinessIdentityLocationPage.dart';
import 'package:merchants/SignupPages/7_CustomerEmailPage.dart';
import 'package:merchants/SignupPages/9_CustomerPasswordPage.dart';
import 'package:merchants/SignupPages/10_SignUpSuccessPage.dart';
import 'package:merchants/LandingPages/3_LoginPage.dart';
import 'package:merchants/MainProductsPages/0_SoleProprietorBottonNavigationPage.dart';
import 'package:merchants/MainProductsPages/1_SoleProprietorReportsPage.dart';
import 'package:merchants/MainProductsPages/2_SoleProprietorBankPaymentsPage.dart';
import 'package:merchants/MainProductsPages/3_SoleProprietorMyBankPage.dart';
import 'package:merchants/MainProductsPages/4_SoleProprietorDealsPage.dart';
import 'package:merchants/MainProductsPages/6_SoleProprietorPOSPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/":(context)=>CustomerType(),
        "/1_PhonePage" : (context)=>PhonePage(),
        "/2_OneTimePinPage" : (context)=>OneTimePin(),
        "/3_CustomerNamePage" :(context)=> CustomerNamePage(),
        "/4_CustomerIdentityPage" :(context)=> CustomerIdentityPage(),
        "/5_BusinessIdentityPage" :(context)=> BusinessIdentityPage(),
        "/6_BusinessIdentityLoacationPage" :(context)=> BusinessIdentityLocationPage(),
        "/7_CustomerEmailPage" :(context)=> CustomerEmailPage(),
        "/9_CustomerPasswordPage" :(context)=> CustomerPasswordPage(),
        "/10_CustomerSuccessPage" :(context)=> CompleteAccountSetUp(),
        "/3_LoginPage" :(context)=> LogInSoleProprietor(),
        "/0_SoleProprietorBottomNanigationPage" :(context)=> SoleProprietorBottomNavPage(),
        "/1_SoleProprietorReportsPage" :(context)=> ReportsPage(),
        "/2_SoleProprietorBankPaymentsPage" :(context)=> BankPaymentsPage(),
        "/3_SoleProprietorBankPage" :(context)=> BankPage(),
        "/4_SoleProprietorDealsPage" :(context)=> DealsPage(),
        "/5_SoleProprietorPOSPage" :(context)=> POSPage(),

      },
    );
  }
}

