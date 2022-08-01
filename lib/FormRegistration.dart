// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_3/SecondPage.dart';

class FormRegistration extends StatefulWidget {
  const FormRegistration({Key? key}) : super(key: key);

  @override
  State<FormRegistration> createState() => _FormRegistrationState();
}

class _FormRegistrationState extends State<FormRegistration> {
  TextEditingController ctrUsername = TextEditingController();
  TextEditingController ctrPassword = TextEditingController();
  

  int id = 1;
  String myPhone = "-";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Form Registration")),
        body: Container(
          margin: EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextField(
              controller: ctrUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
              ),
            ),
            Container(
              height: 20,
            ),
            TextField(
              controller: ctrPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
              ),
            ),
            Container(
              height: 20,
            ),
            Text(
              "Pilih Jenis Kelamin",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      id = 1;
                    });
                  },
                ),
                Text("Male")
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      id = 2;
                    });
                  },
                ),
                Text("Female")
              ],
            ),
            SizedBox(height: 15),
            Text("Phone : " + myPhone),
                 ElevatedButton(onPressed: () async {
              final result = await Navigator.push(
                    context,
                        MaterialPageRoute(builder: (context) => const SecondRoute()),
                      );
                      print("Hasil input : " + result.toString());
                      setState(() {
                        myPhone = result.toString();
                      });
            }, child: Text("Phone")),
                Center(
              child:
              ElevatedButton(onPressed: () async {
              }, child: Text("Confrim")),
            )
          ],
            )
          ),
        );
  }
}
