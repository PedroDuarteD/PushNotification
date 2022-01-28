
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:pushnotification/pushnotification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future<void> initPlatformState() async {
    try {
      await Pushnotification.notification_push("Fulano","Criou nova receita !");

    } on PlatformException {
      print("Erro");
    }


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async{
             await initPlatformState();
            },
            child: Text("ON"),
          ),
        ),
      ),
    );
  }
}
