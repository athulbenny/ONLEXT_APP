import "package:flutter/material.dart";
import "add_file.dart";

class Select_Page extends StatefulWidget {
  static const String id="Select_Page";

  @override
  _Select_PageState createState() => _Select_PageState();
}

class _Select_PageState extends State<Select_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Subject Select"),
        leading:IconButton(
          onPressed:(){
            Navigator.pop(context);
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
                        Navigator.pushNamed(context,Add_File.id);
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
                        Navigator.pushNamed(context,Add_File.id);
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
                        Navigator.pushNamed(context,Add_File.id);
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
                        Navigator.pushNamed(context,Add_File.id);
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
                        Navigator.pushNamed(context,Add_File.id);
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
                        Navigator.pushNamed(context,Add_File.id);
                      },
                      child:Text('Subject 6',
                        style:TextStyle(color:Colors.white, fontSize:25),
                      ),
                    ),
                  ),


                ],
              ),
            ),
            Expanded(
              child: Padding(padding: EdgeInsets.only(left:40,top:150,bottom:0,right: 50),

                child: Container(
                  child: TextButton(
                    onPressed: () {   },
                    child:Text('Add new subject',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),

                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}