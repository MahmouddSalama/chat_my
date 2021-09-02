import 'package:flutter/material.dart';
import 'package:whates_app_ui/constants/const.dart';
import 'package:whates_app_ui/model/users.dart';

class ChatScreen extends StatelessWidget {
  final Users users;

  const ChatScreen({required this.users});
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBakeColor,
      appBar: AppBar(
        backgroundColor: KPcolor,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(users.imagUrl),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 130,
                  child: Text(
                    users.name,
                    style: TextStyle(
                      color: KWhite,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  'online',
                  style: TextStyle(color: KWhite, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Chats"),
            ),
          ),
          Row(
            children: [
              Container(
                width: size.width-50,
                height: 55,
                child: Card(
                  //color: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:TextFormField(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    onChanged: (v){},
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.tag_faces_outlined,color: Colors.grey,size: 25,),
                      hintText: 'Message',
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                      suffixIcon: Container(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.camera,color: Colors.grey,),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.camera_alt,color: Colors.grey,),
                            ),
                          ],
                        ),
                      )
                    ),
                  ),
                ),
              ),
              Spacer(),
              CircleAvatar(child: IconButton(onPressed: (){}, icon: Icon(Icons.send,color: KWhite,),),backgroundColor: KPcolor,),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
