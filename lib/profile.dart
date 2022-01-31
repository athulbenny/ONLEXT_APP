import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dart:async';

import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'exam.dart';


class Profile extends StatefulWidget {
  static const String id="Profile";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20, //backgroundColor: Colors.lightBlue,
            color: Colors.white,
          ),),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text('Student profile',
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  height: 05.0,
                ),
              ),
            ),

            Padding(

              padding: const EdgeInsets.only(
                  top: 50.0, left: 30, right: 40, bottom: 0),
              child: Container(
                height: size.height * .20,

                color: Colors.black38,
                child: Column(
                  children: [
                    Expanded(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 0, top: 15),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/profile.png'),
                            radius: 40.0,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [ Padding(
                        padding: const EdgeInsets.only(
                            right: 40, left: 30.0, top: 10.0),
                        child: Text('YOUR NAME',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),

                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 0, bottom: 0.0),
                            child: Text('BRANCH',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 15),
                            child: Text('BATCH',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),),
                          ),
                        ),
                        Center(
                          child: Padding(padding: EdgeInsets.only(right: 0),
                            child: Text(''),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(
                left: 30, right: 40, top: 40, bottom: 20),
              child: Container(
                height: size.height * .20,

                color: Colors.black45,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10, left: 20),
                          child: Icon(Icons.adjust_rounded),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text('EXAM SUBJECT',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10, left: 20),
                          child: Icon(Icons.adjust_rounded),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text('MAXIMUM MARK',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10, left: 20),
                          child: Icon(Icons.adjust_rounded),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text('EXAM DURATION',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10, left: 20),
                          child: Icon(Icons.adjust_rounded),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text('EXAM SHEDULE',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(padding: EdgeInsets.only(
                  left: 150, right: 150, top: 20, bottom: 50),
                child: Container(
                  height: size.height * .20,
                  color: Colors.red,
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        function();
                        //Navigator.pushNamed(context, Exam.id);
                      },
                      child: Text('START EXAM',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left:10,bottom: 10),
            child: Container(
              child: Text('you should have an active internet connection for starting the exam',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            ),
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
              Navigator.pushNamed(context, Exam.id);
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
