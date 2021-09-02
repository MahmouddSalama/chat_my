import 'package:flutter/material.dart';
import 'package:whates_app_ui/constants/const.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBakeColor,
      appBar: AppBar(
        title: Text(
          'Profile',
        ),
        backgroundColor: KPcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: KWhite,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.green,
                    backgroundImage: AssetImage('asstes/images/user.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: FloatingActionButton(
                      backgroundColor: KPcolor,
                      onPressed: () {},
                      child: Icon(Icons.camera_alt),
                    ),
                  )
                ],
              ),
              buildListTile(
                text1: 'Name',
                text2: 'mahmoud Salama',
                icon: Icons.person,
              ),
              buildListTile(
                text1: 'About',
                text2: 'iam using whatsApp',
                icon: Icons.info_outline,
              ),
              buildListTile(
                text1: 'Phone',
                text2: '01061835782',
                icon: Icons.phone,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile({
    text1,
    text2,
    icon,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: KPcolor,
        size: 30,
      ),
      title: Text(text1),
      subtitle: Text(
        text2,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.edit),
      ),
    );
  }
}
