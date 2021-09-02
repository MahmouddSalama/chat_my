import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whates_app_ui/constants/const.dart';
import 'package:whates_app_ui/model/users.dart';
import 'package:whates_app_ui/screens/chat_pesson_screen.dart';
import 'package:whates_app_ui/widget/alert_dialog.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBakeColor,
      body: ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(
              left: 5,
              top: 10
            ),
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatScreen(users: usersList[index])));
              },
              leading: GestureDetector(
                onTap: (){
                  final alert=MyDialog(users: usersList[index], size: size);
                  showDialog(context: context, builder: (_)=>alert);
                },
                child: Hero(
                  tag: usersList[index].id,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(usersList[index].imagUrl),
                  ),
                ),
              ),
              title: Text('${usersList[index].name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              subtitle: Text('${usersList[index].msg}'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('${usersList[index].time}'),
                  SizedBox(height: 5,),
                 usersList[index].numMsg!=0? CircleAvatar(
                    backgroundColor: KScolor ,
                    radius: 10,
                    child: Text('${usersList[index].numMsg}',style: TextStyle(
                      color: KWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 12
                    ),),
                  ):CircleAvatar(radius: 0,),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: KScolor,
        child: Icon(
          Icons.chat,color: KWhite,
          size: 30,
        ),
      ),
    );
  }
}

