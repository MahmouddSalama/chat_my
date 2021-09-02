import 'package:flutter/material.dart';
import 'package:whates_app_ui/constants/const.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class Camera extends StatefulWidget {

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? _image;

  final picker=ImagePicker();

  Future getImage(ImageSource crs) async{
    final pickerFile= await picker.getImage(source: crs);
    setState(() {
      if(pickerFile!=null)
      {
        _image=File(pickerFile.path);

      }
      else {
        print('No photo');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBakeColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: Container(
              //alignment: Alignment(0,0),
              width: size.width,
              height: size.height*.5,
             decoration: BoxDecoration(
               color: KScolor,
               borderRadius: BorderRadius.circular(30),
             ),
              child: _image==null?Align(
                alignment: Alignment.center,
                child: Text('No Photo catch',style: TextStyle(
                    fontSize: 30,
                    color: KWhite,
                    fontWeight: FontWeight.bold
                ),),
              ):ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.file(_image!,fit: BoxFit.fill,)),
            ),
          ),
          TextButton(
            onPressed: (){
              getImage(ImageSource.camera);
            },
            child: Container(
              alignment: Alignment(0,0),
              width: 150,
              height: 55,
              decoration: BoxDecoration(
                color: KPcolor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('catch',style: TextStyle(
                  fontSize: 25,
                  color: KWhite,
                  fontWeight: FontWeight.w600,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
