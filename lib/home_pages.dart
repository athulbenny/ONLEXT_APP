import "package:flutter/material.dart";
import 'package:onlext_on_app/profile.dart';
import 'Select_Subjects.dart';
import "add_file.dart";

class Select_Pages extends StatefulWidget {
  static const String id="Select_Pages";

  @override
  _Select_PagesState createState() => _Select_PagesState();
}

class _Select_PagesState extends State<Select_Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Subject Select"),
        leading:IconButton(
          onPressed:(){
            Navigator.pushNamed(context, Subject_Selects.id);
          },

          icon:Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor:Color(0xff1515151),
      body:Center(
        child:Column(
          children:[
            Container(
              child:Row(
                children:<Widget>[
                  Container(
                    margin:EdgeInsets.all(20),
                    height:150,
                    width:150,
                    decoration:BoxDecoration(
                      color:Colors.cyan,
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child:TextButton(
                      onPressed:(){
                        Navigator.pushNamed(context,Profile.id);
                      },
                      child:Text('Subject 1',
                        style:TextStyle(color:Colors.white, fontSize:25),
                      ),
                    ),
                  ),


                  Container(
                    margin:EdgeInsets.all(20),
                    height:150,
                    width:150,
                    decoration:BoxDecoration(
                      color:Colors.lightBlue,
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child:TextButton(
                      onPressed:(){
                        Navigator.pushNamed(context,Profile.id);
                      },
                      child:Text('Subject 2',
                        style:TextStyle(color:Colors.white, fontSize:25),
                      ),
                    ),
                  ),



                ],
              ),
            ),


            Container(
              child:Row(
                children:<Widget>[
                  Container(
                    margin:EdgeInsets.all(20),
                    height:150,
                    width:150,
                    decoration:BoxDecoration(
                      color:Colors.lightGreenAccent,
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child:TextButton(
                      onPressed:(){
                        Navigator.pushNamed(context,Profile.id);
                      },
                      child:Text('Subject 3',
                        style:TextStyle(color:Colors.white, fontSize:25),
                      ),
                    ),
                  ),


                  Container(
                    margin:EdgeInsets.all(20),
                    height:150,
                    width:150,
                    decoration:BoxDecoration(
                      color:Colors.deepOrange,
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child:TextButton(
                      onPressed:(){
                        Navigator.pushNamed(context,Profile.id);
                      },
                      child:Text('Subject 4',
                        style:TextStyle(color:Colors.white, fontSize:25),
                      ),
                    ),
                  ),



                ],
              ),
            ),


            Container(
              child:Row(
                children:<Widget>[
                  Container(
                    margin:EdgeInsets.all(20),
                    height:150,
                    width:150,
                    decoration:BoxDecoration(
                      color:Colors.brown,
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child:TextButton(
                      onPressed:(){
                        Navigator.pushNamed(context,Profile.id);
                      },
                      child:Text('Subject 5',
                        style:TextStyle(color:Colors.white, fontSize:25),
                      ),
                    ),
                  ),


                  Container(
                    margin:EdgeInsets.all(20),
                    height:150,
                    width:150,
                    decoration:BoxDecoration(
                      color:Colors.tealAccent,
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child:TextButton(
                      onPressed:(){
                        Navigator.pushNamed(context,Profile.id);
                      },
                      child:Text('Subject 6',
                        style:TextStyle(color:Colors.white, fontSize:25),
                      ),
                    ),
                  ),



                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}