import 'package:flutter/material.dart';
import 'package:merchants/MerchantPages/LandingPages/1_CustomerTypePage.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/1_PhonePage.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/2_OneTimePinPage.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/3_CustomerNamePage.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/4_CustomerIdentityPage.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/5_BusinessIdentityPage.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/6_BusinessIdentityLocationPage.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/7_CustomerEmailPage.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/9_CustomerPasswordPage.dart';
import 'package:merchants/MerchantPages/SignupPages/IndividualsPages/10_SignUpSuccessPage.dart';
import 'package:merchants/MerchantPages/LandingPages/3_LoginPage.dart';
import 'package:merchants/MerchantPages/MainProductsPages/0_SoleProprietorBottonNavigationPage.dart';
import 'package:merchants/MerchantPages/MainProductsPages/1_SoleProprietorReportsPage.dart';
import 'package:merchants/MerchantPages/MainProductsPages/2_SoleProprietorBankPaymentsPage.dart';
import 'package:merchants/MerchantPages/MainProductsPages/3_SoleProprietorMyBankPage.dart';
import 'package:merchants/MerchantPages/MainProductsPages/4_SoleProprietorManagePage.dart';
import 'package:merchants/MerchantPages/MainProductsPages/6_SoleProprietorPOSPage.dart';
import 'package:merchants/MerchantPages/CollectMoneyPages/1_CollectMoneyLandingPage.dart';
import 'package:merchants/MerchantPages/LandingPages/2_LandingPage.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/1_RegisteredBusinessNamePage.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/2_RegisteredBusinessContactsPage.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/3_RegisteredBusinessRoles.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/4_DirectorPhonePage.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/5_DirectorOneTimePinPage.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/6_DirectorNamePage.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/7_DirectorIdentityPage.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/8_DirectorEmailPage.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/9_DirectorPasswordPage.dart';
import 'package:merchants/MerchantPages/SignUpRegisteredBusinessPages/10_DirectorSignUpSucessPage.dart';
import 'package:merchants/MerchantPages/LandingPages/4_SelectBusinessPage.dart';


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
        "/":(context)=>LandingPage(),
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
        "/1_SoleProprietorReportsPage" :(context)=> SalesReport(),
        "/2_SoleProprietorBankPaymentsPage" :(context)=> BankPaymentsPage(),
        "/3_SoleProprietorBankPage" :(context)=> BankPage(),
        "/4_SoleProprietorDealsPage" :(context)=> ManagePage(),
        "/5_SoleProprietorPOSPage" :(context)=> POSPage(),
        "/1_CollectMoneyPage" :(context)=> CollectMoneyPage(),
        "/1_CustomerType" :(context)=>CustomerType(),
        "/2_LandingPage":(context)=>LandingPage(),
        '/1_RegisteredBusinessNamePage': (context)=> RegisteredBusinessNamePage(),
        '/2_RegisteredBusinessContactsPage': (context)=> RegisteredBusinessContactsPage(),
        '/3_RegisteredBusinessRolesPage': (context)=> RegisteredBusinessRoles(),
        '/4_DirectorPhonePage': (context)=> DirectorPhonePage(),
        '/5_DirectorOneTimePinPage': (context)=> DirectorOneTimePin(),
        '/6_DirectorNamePage': (context)=> DirectorNamePage(),
        '/7_DirectorIdPage': (context)=> DirectorIdentityPage(),
        '/8_DirectorEmailPage': (context)=> DirectorEmailPage(),
        '/9_DirectorPasswordPage': (context)=> DirectorPasswordPage(),
        '/10_DirectorSignUpSucessPage': (context)=> DirectorCompleteAccountSetUp(),
        '/4_SelectBusinessPage': (context)=> SelectBusinessPage(),
      },
    );
  }
}

