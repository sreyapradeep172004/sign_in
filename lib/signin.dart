import 'dart:html';

import 'package:flutter/material.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(color: Colors.black,),
          backgroundColor: Colors.white,
          title: Text(
            'Sign in',
            style: TextStyle(
                color: Colors.pink,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Email-Address')),
          SizedBox(height: 20),
          TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Log in', style: TextStyle(fontSize: 30,color: Colors.blue,backgroundColor: Colors.red)),
          ),
          Text('or', style: TextStyle(color: Colors.black,fontSize: 30),),
          ElevatedButton(
            onPressed: null,
            child: Text('facebook login', style: TextStyle(fontSize: 30,color: Colors.blue,backgroundColor: Colors.black)),
          ),
        ],
      ),
    );
  }
}
