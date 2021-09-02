import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:whates_app_ui/constants/const.dart';
import 'package:whates_app_ui/layouts/calls.dart';
import 'package:whates_app_ui/layouts/canera.dart';
import 'package:whates_app_ui/layouts/cats.dart';
import 'package:whates_app_ui/layouts/stats.dart';
import 'package:whates_app_ui/screens/profil_screen.dart';

import 'model/users.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}

class HomeLayout extends StatelessWidget {
  var item;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: KPcolor,
          title: Text(
            'Chat My',
            style: TextStyle(
              fontSize: 21,
              color: KWhite.withOpacity(.8),
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: KWhite.withOpacity(.8),
                size: 30,
              ),
            ),
            PopupMenuButton(
              onSelected: (item){
                if(item==1) Navigator.push(context, MaterialPageRoute(builder: (_)=>Profile()));
              },
              color: KScolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      'Profile',
                      style: TextStyle(color: KWhite, fontSize: 18),
                    ),
                  ),
                  PopupMenuItem(
                    child: Text(
                      'Logout',
                      style: TextStyle(color: KWhite, fontSize: 18),
                    ),
                  ),
                  PopupMenuItem(
                      child: Text(
                    'setting',
                    style: TextStyle(color: KWhite, fontSize: 18),
                  )),
                ];
              },
            ),
          ],
          bottom: TabBar(
            onTap: (v) {},
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt, size: 30),
                ),
              Tab(
                  child: Row(
                    children: [
                      Text('Chats', style: buildTextStyle(),),
                      SizedBox(width: 3,),
                      CircleAvatar(radius: 7,backgroundColor: KScolor,child: Text('9',
                      style:TextStyle(
                        fontSize: 12,
                        color: KWhite
                      ),
                      ),)
                    ],
                  )),
              Tab(
                  child: Text(
                'States',
                style: buildTextStyle(),
              )),
              Tab(
                  child: Text(
                'Calls',
                style: buildTextStyle(),
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Camera(),
            Chats(),
            States(),
            Calls(),
          ],
        ),
      ),
    );
  }

  TextStyle buildTextStyle() {
    return TextStyle(fontWeight: FontWeight.w500, fontSize: 18);
  }
}
