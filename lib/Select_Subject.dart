import "package:flutter/material.dart";
import 'package:onlext_on_app/Select_Subjects.dart';
import "add_file.dart";
import 'home_paget.dart';

class Subject_Select extends StatefulWidget {
  static const String id="Subject_Select";

  @override
  _Subject_SelectState createState() => _Subject_SelectState();
}

class _Subject_SelectState extends State<Subject_Select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(
            onPressed:(){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back_ios)
        ),

      ),
      body:SingleChildScrollView(
        child:Center(
          child:Column(
            mainAxisSize:MainAxisSize.min,
            children:[

              Padding(
                padding:const EdgeInsets.only(top:200.0,right:15.0,left:15.0,bottom:0.0),
                child:TextField(
                  decoration:InputDecoration(
                    border:OutlineInputBorder(),
                    labelText:'User ID',
                    hintText:'Type your id',
                  ),
                ),
              ),
              Padding(
                  padding:EdgeInsets.only(left:15.0,right:15.0,top:10.0,bottom:10.0),
                  child:TextField(
                    decoration:InputDecoration(
                      border:OutlineInputBorder(),
                      labelText:'Password',
                      hintText:'Type password here',
                    ),
                  )
              ),
              Container(
                height:50,
                width:250,
                decoration:BoxDecoration(
                  color:Colors.lightBlueAccent,
                  borderRadius:BorderRadius.circular(20),
                ),
                child:TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,Select_Page.id);
                  }, child: Text("Subject Select area"),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}