import 'package:flutter/material.dart';
import 'package:whates_app_ui/constants/const.dart';

class MyFoating extends StatelessWidget {
  final IconData iconData1,iconData2;

  const MyFoating({required this.iconData1,required this.iconData2}) ;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xffEFF4F5),
            child: Icon(
              iconData1,
              color: Colors.black,
            ),
          ),
          Container(
            height: 100.0,
            width: 100.0,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: KScolor,
                child: Icon(
                  iconData2,
                  color: KWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
