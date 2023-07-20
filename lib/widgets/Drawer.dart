
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQwJQsfOuv3MEP0BVqiwZ6STOw1tEhh3Tcng&usqp=CAU";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,

        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                 accountName: Text("Aniket Thakur"),
                accountEmail: Text("ani@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  //provider for image not widget
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),

            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "HOME",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),

              
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),

              
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),

              
            )
          ],
      
        ),
      ),


    );
  }
}