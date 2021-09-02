import 'package:flutter/material.dart';
import 'package:whates_app_ui/constants/const.dart';
class SendField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Row(
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
    );
  }
}
