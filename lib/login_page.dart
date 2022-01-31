import "package:flutter/material.dart";
import 'package:onlext_on_app/Select_Subjects.dart';
import 'Select_Subject.dart';
//import "subject_select.dart";

class Login_Page extends StatefulWidget {
  static const String id="Login_Page";

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(child: Text('ONLEXT ON APP',
        style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold
        ),
        )),
        backgroundColor:Colors.indigoAccent,

      ),
      body:Container(
        child:Center(
          child:Column(
            children:<Widget>[
              Padding(
                padding:EdgeInsets.only(top:250.0,right:15.0,left:15.0,bottom:10.0),
                child:Text("Select Your Portal",
                  style:TextStyle(color:Colors.black87,
                    fontFamily:'Raleway',
                    fontSize:25,),
                ),
              ),
              Container(
                height:50,
                width:250,
                margin:EdgeInsets.all(20),
                decoration:BoxDecoration(
                  color:Colors.teal,
                  borderRadius:BorderRadius.circular(20),
                ),
                child:TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,Subject_Select.id);
                  },
                  child:Text("Teacher",
                    style:TextStyle(color:Colors.white, fontSize:25,),
                  ),
                ),
              ),
              Container(
                height:50,
                width:250,

                decoration:BoxDecoration(
                  color:Colors.red,
                  borderRadius:BorderRadius.circular(20),
                ),
                child:TextButton(
                  onPressed:(){
                    Navigator.pushNamed(context,Subject_Selects.id);
                  },
                  child:Text("Student",
                    style:TextStyle(color:Colors.white,fontSize:25),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

