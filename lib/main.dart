// import 'package:flutter/material.dart';
//
// void main()=>runApp(App_code());
//
// class App_code extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context){
//
//     return MaterialApp(
//       title:'Unlext App',
//       theme:ThemeData(primarySwatch:Colors.blue),
//       home:LoginPage(),
//     );
//
//   }
//
// }
//
// class LoginPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar:AppBar(
//         title:Text("Unlext App"),
//       ),
//       body:Column(
//         children:[
//           TaskDoneBar(),
//           TaskLists(),
//           MentorPage(),
//         ],
//       ),
//     );
//   }
// }
//
// class TaskDoneBar extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context){
//     return Column(
//       children:[
//       Text("Tasks Done"),
//       LinearProgressIndicator(value:0.0),
//       ],
//     );
//   }
//
// }
//
// class TaskLists extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//
//     return Column(
//       children:[
//         TaskItem(label:"Task 1"),
//         TaskItem(label:"Task 2"),
//         TaskItem(label:"Task 3"),
//         TaskItem(label:"Task 4"),
//       ],
//     );
//
//   }
// }
//
// class TaskItem extends StatefulWidget {
//   final String label;
//   TaskItem({Key? key,required this.label}) : super(key: key);
//
//   @override
//   _TaskItemState createState() => _TaskItemState();
// }
//
// class _TaskItemState extends State<TaskItem> {
//   bool? _value=false;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children:[
//         Checkbox(
//             onChanged:(newValue)=>setState(()=>_value=newValue),
//             value:_value),
//         Text(widget.label),
//       ],
//     );
//   }
// }
//
// class MentorPage extends StatefulWidget {
//   const MentorPage({Key? key}) : super(key: key);
//
//   @override
//   _MentorPageState createState() => _MentorPageState();
// }
//
// class _MentorPageState extends State<MentorPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:Text('Hi'),
//       color:Colors.blue,
//       padding:EdgeInsets.all(20.0),
//       alignment:Alignment.center,
//     );
//   }
// }


//import 'dart:async';
//import 'dart:js';
//import 'package:internet_connection_checker/internet_connection_checker.dart';
import "package:flutter/material.dart";
import 'package:onlext_on_app/profile.dart';
import 'Select_Subject.dart';
import 'Select_Subjects.dart';
import 'exam.dart';
import 'exams.id.dart';
import 'home_pages.dart';
import 'home_paget.dart';
import "login_page.dart";
//import "subject_select.dart";
import "add_file.dart";


void main()=>runApp(Select_App());

class Select_App extends StatelessWidget{

  @override
  Widget build(BuildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:Login_Page.id,
      routes:{
        Login_Page.id:(context)=>Login_Page(),
        Subject_Select.id:(context)=>Subject_Select(),
        Subject_Selects.id:(context)=>Subject_Selects(),
        Add_File.id:(context)=>Add_File(),
        Select_Page.id:(context)=>Select_Page(),
        Select_Pages.id:(context)=>Select_Pages(),
        Profile.id:(context)=>Profile(),
        Exam.id:(context)=>Exam(),
        Exams.id:(context)=>Exams(),
      },
      title:"Onlext App",
      theme:ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:Selection_area(),
    );
  }

}

class Selection_area extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Something"),
        backgroundColor: Colors.indigoAccent,
      ),
      body:Column(
        children:[
          TextButton(
            style:ButtonStyle(
              foregroundColor:MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed:(){},
            child:Text('Text Button'),
          ),
        ],
      ),
    );

  }

}



