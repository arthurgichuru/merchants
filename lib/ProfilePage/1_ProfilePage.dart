import 'package:flutter/material.dart';
import 'package:merchants/MainProductsPages/0_SoleProprietorBottonNavigationPage.dart';


class ProfilePage extends StatefulWidget{

  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {


    var userProfile = ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Arthur Gichuru'),accountEmail: Text('arthur.gichuru@cbagroup.com'),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text('A', style: TextStyle(fontSize: 40.0),),
          ),
        ),
        ListTile(
          title: Text('Profile'),
          trailing: Icon(Icons.perm_identity),
        ),
        ListTile(
          title: Text('Notifications'),
          trailing: Icon(Icons.notifications_active),
        ),
        ListTile(
          title: Text('Change Password'),
          trailing: Icon(Icons.lock),

        ),
        ListTile(
          title: Text('Invite a Friend'),
          trailing: Icon(Icons.people_outline),

        ),
        ListTile(
          title: Text('Sign Out'),
          trailing: Icon(Icons.exit_to_app),

        ),
      ],
    );


    // TODO: implement build
    return Material(
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text('Profile', style: TextStyle(color: Colors.white),),
            leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SoleProprietorBottomNavPage() ));
                }
            ),
            backgroundColor: Colors.blue
        ),
        body: userProfile,
      ),
    );
  }
}