import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:get_text_size/get_text_size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GetTextSize getTextSize = GetTextSize();
  TextEditingController tc = TextEditingController();
  TextEditingController tcSize = TextEditingController();

  @override
  void initState() {
    super.initState();
    tc.text = 'Text';
    tcSize.text = '16';
    changeString();
  }

  changeString() {
    getTextSize.setText(tc.text, TextStyle(fontSize: double.parse(tcSize.text.toString())));
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get Text Size'),
        ),
        body: Center(
          child: Column(children: [
            Row(children: [
              Container(
                margin: EdgeInsets.all(10),
                child:Text('String'),
              ),
              Expanded(child: TextField(
                controller: tc,
              )),

            ],),
            Row(children: [
              Container(
                margin: EdgeInsets.all(10),
                child:Text('Size'),
              ),
              Expanded(child: TextField(
                controller: tcSize,
              )),

            ],),
            Text('String Height:' + getTextSize.getHeight().toString()),
            Text('String Width:' + getTextSize.getWidth().toString()),
            TextButton(child: Text('renew'), onPressed: changeString,)
          ],),
        ),
      ),
    );
  }
}
