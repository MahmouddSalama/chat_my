import 'package:flutter/material.dart';
import 'package:whates_app_ui/constants/const.dart';
import 'package:whates_app_ui/model/users.dart';
import 'package:whates_app_ui/widget/float_cations.dart';

class States extends StatelessWidget {
  List<Users> statueList =
      usersList.where((element) => (element.hasState)).toList();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBakeColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Container(
                width: 60,
                height: 60,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('asstes/images/user.png'),
                    ),
                    Align(
                      alignment: Alignment(1, 1),
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: KScolor,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '+',
                              style: TextStyle(color: KWhite, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              title: Text(
                'My Status',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Tap to add status update'),
            ),
          ),
          Container(
            alignment: Alignment(-.9, 0),
            width: size.width,
            height: 35,
            color: Color(0xffEEEEEE),
            child: Text(
              'viewed updates',
              style: TextStyle(color: Color(0xff949494), fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: statueList.length,
              itemBuilder: (context, index) {
                if (index != 5) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(statueList[index].imagUrl),
                    ),
                    title: Text(
                      '${statueList[index].name}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text('${statueList[index].time}'),
                  );
                } else {
                  return Container(
                    alignment: Alignment(-.9, 0),
                    width: size.width,
                    height: 35,
                    color: Color(0xffEEEEEE),
                    child: Text(
                      'viewed updates',
                      style: TextStyle(color: Color(0xff949494), fontSize: 18),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: MyFoating(
        iconData1: Icons.edit,
        iconData2: Icons.camera_alt,
      ),
    );
  }
}
