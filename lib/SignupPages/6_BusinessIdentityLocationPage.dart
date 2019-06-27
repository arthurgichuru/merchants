import 'package:flutter/material.dart';
import 'package:merchants/SignupPages/5_BusinessIdentityPage.dart';
import 'package:merchants/SignupPages/7_CustomerEmailPage.dart';


class BusinessIdentityLocationPage extends StatefulWidget{

  _BusinessIdentityLocationPage createState()=> _BusinessIdentityLocationPage();
}

class _BusinessIdentityLocationPage extends State<BusinessIdentityLocationPage>{
  @override
  Widget build(BuildContext context) {


    List<String> getListCounties(){

      var counties = [
        "1-Mombasa",
        "2-Kwale",
        "3-Kilifi",
        "4-Tana River",
        "5-Lamu",
        "6-Taita–Taveta",
        "7-Garissa",
        "8-Wajir",
        "9-Mandera",
        "10-Marsabit",
        "11-Isiolo",
        "12-Meru",
        "13-Tharaka-Nithi",
        "14-Embu",
        "15-Kitui",
        "16-Machakos",
        "17-Makueni",
        "18-Nyandarua",
        "19-Nyeri",
        "20-Kirinyaga",
        "21-Murang'a",
        "22-Kiambu",
        "23-Turkana",
        "24-West Pokot",
        "25-Samburu",
        "26-Trans-Nzoia",
        "27-Uasin Gishu",
        "28-Elgeyo-Marakwet",
        "29-Nandi",
        "30-Baringo",
        "31-Laikipia",
        "32-Nakuru",
        "33-Narok",
        "34-Kajiado",
        "35-Kericho",
        "36-Bomet",
        "37-Kakamega",
        "38-Vihiga",
        "39-Bungoma",
        "40-Busia",
        "41-Siaya",
        "42-Kisumu",
        "43-Homa Bay",
        "44-Migori",
        "45-Kisii",
        "46-Nyamira",
        "47-Nairobi"
      ];
      return counties;
    }

    Widget getListView(){


      var listCounties = getListCounties();

      var listView = ListView.builder(
          itemBuilder: (context, index){

            return ListTile(
              leading: Icon(Icons.landscape,color: Colors.orange,),
              title: Text(listCounties[index]),
              onTap: (){

              },
            );

          }
      );
      return listView;
    }



    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BusinessLocationIdPage',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Your Business Location', style: TextStyle(color: Colors.white),),
          leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.white,
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> BusinessIdentityPage() ));
              }
          ),
          backgroundColor: Colors.blue,
        ),
        body: getListView(),



        ),
    );
  }




}