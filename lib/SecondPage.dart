import 'package:flutter/material.dart';
import 'package:flutter_application_3/FormRegistration.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  TextEditingController ctrphone = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children :[
            TextField(
              controller: ctrphone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone',
              ),
            
            ),
            SizedBox(height: 15),
              ElevatedButton(onPressed: () async {
              Navigator.pop(context, ctrphone.text);
            }
            , child: Text('Submit'),),
          ]
        ),
      ),
    );
  }
}
