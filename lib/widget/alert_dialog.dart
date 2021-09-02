import 'package:flutter/material.dart';
import 'package:whates_app_ui/constants/const.dart';
import 'package:whates_app_ui/model/users.dart';
class MyDialog extends StatelessWidget {
  final Users users;
  final Size size;

  const MyDialog({required this.users,required this.size});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width:size.width*.6,
        height: size.height*.35,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: size.height*.3,
              width: size.width*.6,
              child: Expanded(
                child: Image.network(users.imagUrl,fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.chat,color: KPcolor,size: 25,),
                Icon(Icons.call ,color: KPcolor,size: 25,),
                Icon(Icons.video_call_rounded,color: KPcolor,size: 25,),
                Icon(Icons.info_outline,color: KPcolor,size: 25,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
