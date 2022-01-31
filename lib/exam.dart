import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'exams.id.dart';
import 'home_pages.dart';

class Exam extends StatefulWidget {
  static const String id="Exam";

  @override
  _ExamState createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool ismic=false;
    return Scaffold(
      appBar: AppBar(
        title:Text(' Exam Page',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        leading:IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 10,bottom: 30,top: 20,right: 10),
              child: Container(
                height: size.height*.20,
                color: Colors.blueGrey,
              ),
            ),
      Padding(padding: EdgeInsets.only(left: 10,bottom: 30,top: 20,right: 10),
        child: Container(
          height: size.height*.20,
          color: Colors.blueGrey,),),
      Padding(padding: EdgeInsets.only(left: 10,bottom: 30,top: 20,right: 10),
        child: Container(
          height: size.height*.20,
          color: Colors.blueGrey,)),
            Center(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10,left: 150,right: 10,bottom: 10),
                    child: Icon(Icons.voice_chat),
                  ),
                  Padding(padding: EdgeInsets.only(top:10,right: 10,left: 10,bottom: 10),
                      child: Icon(
                        Icons.add_a_photo),

                  ),

                ],
              ),
            ),
            Row(
              children: [

                Expanded(
                  child: Padding(padding: EdgeInsets.only(left:70,top:10,bottom:0,right: 0),
                    child: Container(
                      child: TextButton(
                        onPressed: () { Navigator.pushNamed(context, Select_Pages.id); },
                        child:Text('Submit exam',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:40,top:10,bottom:10),
                  child: Container(
                    child: TextButton(
                      onPressed: () { Navigator.pushNamed(context, Exams.id);
    },//function();
                      child:Text('Next Page',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
    Future<void> function() async {
    // Simple check to see if we have Internet
    // ignore: avoid_print

    print('''The statement 'this machine is connected to the Internet' is: ''');
    final bool isConnected = await InternetConnectionChecker().hasConnection;
    // ignore: avoid_print
    print(
    isConnected.toString(),
    );
    // returns a bool

    // We can also get an enum instead of a bool
    // ignore: avoid_print
    print(
    'Current status: ${await InternetConnectionChecker().connectionStatus}');
    // Prints either InternetConnectionStatus.connected
    // or InternetConnectionStatus.disconnected

    // actively listen for status updates
    final StreamSubscription<InternetConnectionStatus> listener =
    InternetConnectionChecker().onStatusChange.listen(
    (InternetConnectionStatus status) {
    switch (status) {
    case InternetConnectionStatus.connected:
    // ignore: avoid_print
      print('Data connection is available.');
      Navigator.pushNamed(context, Exams.id);
    break;
    case InternetConnectionStatus.disconnected:
    // ignore: avoid_print
    print('You are disconnected from the internet.');
    break;
    }
    },
    );

    // close listener after 30 seconds, so the program doesn't run forever
    await Future<void>.delayed(const Duration(seconds: 30));
    await listener.cancel();


    }

}
/*class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  // This variable will tell you whether the application is in foreground or not.
  bool _isInForeground = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    _isInForeground = state == AppLifecycleState.resumed;
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold();
}*/
