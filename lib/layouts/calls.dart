import 'package:flutter/material.dart';
import 'package:whates_app_ui/constants/const.dart';
import 'package:whates_app_ui/model/users.dart';
import 'package:whates_app_ui/widget/float_cations.dart';

class Calls extends StatelessWidget {
  final List<Users> callList =
      usersList.where((element) => (element.call == true)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBakeColor,
      body: ListView.builder(
        itemCount: callList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(callList[index].imagUrl),
            ),
            title: Text(
              '${callList[index].name}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Row(
              children: [
                callList[index].typeCalling==0?Icon(Icons.arrow_downward_outlined,color: KScolor,):
                Icon(Icons.arrow_upward_sharp,color: Colors.red,),
                Text('${callList[index].time}'),
              ],
            ),
            trailing: callList[index].typeCalling == 0
                ? Icon(Icons.call,size: 30,color: KPcolor,)
                : Icon(Icons.video_call,size: 30,color: KPcolor,),
          );
        },
      ),
      floatingActionButton: MyFoating(
      iconData1: Icons.video_call_rounded,
        iconData2: Icons.add_ic_call,
      ),
    );
  }
}
