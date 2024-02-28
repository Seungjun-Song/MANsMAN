import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  // runApp 앱 시작해주세요. (const 앱 메인페이지)
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("앱임", style: TextStyle(color: Color(0xffc11212)),),
          leading: Icon(Icons.account_tree_rounded),
          actions: const [Icon(Icons.star),Icon(Icons.star),Icon(Icons.star),],
        ),
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: double.infinity,
                width: 100,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  border: Border.all(color: Colors.black)
                ),
                child : Text("나집간다.", style: TextStyle(color: Colors.grey, fontWeight:FontWeight.w600), )),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            SizedBox(
              child : ElevatedButton(
                child:Text('글자'),
                      onPressed: (){},)),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)],
            ),
          ),
        ),
      ),
    );
  }
}

