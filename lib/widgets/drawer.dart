import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final imageUrl=  "https://picsum.photos/250?image=9";
   return Drawer(
     child: Container(
       color: Colors.deepOrange,
       child: ListView(
         children: [
           DrawerHeader(
             padding: EdgeInsets.zero,
             child: UserAccountsDrawerHeader(
               margin: EdgeInsets.zero,
               decoration: BoxDecoration(color: Colors.deepOrange),
               accountName: Text("Swapnil Patil"),
               accountEmail: Text("swapnil.patil900@gmail.com"),
               currentAccountPicture:CircleAvatar(
                 backgroundImage: NetworkImage(imageUrl),
               ),
             ),
           ),
           ListTile(
             leading: Icon(
               CupertinoIcons.home,
             color: Colors.white,),
               title:Text(
                   "Home",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white
                 ),
               )
           ),
           ListTile(
               leading: Icon(
                 CupertinoIcons.profile_circled,
                 color: Colors.white,),
               title:Text(
                 "Profile",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                     color: Colors.white
                 ),
               )
           ),
           ListTile(
               leading: Icon(
                 CupertinoIcons.bubble_middle_bottom,
                 color: Colors.white,),
               title:Text(
                 "Email",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                     color: Colors.white
                 ),
               )
           ),

         ],
       ),
     ),
   );
  }
}