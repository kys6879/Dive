import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/pages/BackupSettingPage.dart';
import 'package:flutterapp/pages/PushSettingPage.dart';
import 'package:flutterapp/pages/TagSettingPage.dart';
import 'package:flutterapp/pages/VersionSettingPage.dart';

class SettingPage extends StatelessWidget {
  SettingPage({this.title});
  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(this.title)),
        body: ListView(
          children: <Widget>[
            RaisedButton(
                child: Text('알림 설정'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PushSettingPage()),
                  );
                }),
            RaisedButton(
                child: Text('태그 설정'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TagSettingPage()),
                  );
                }),
            RaisedButton(
                child: Text('백업'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BackupSettingPage()),
                  );
                }),
            RaisedButton(
                child: Text('버전'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VersionSettingPage()),
                  );
                }),
            RaisedButton(
                child: Text('데이터 삽입(document 생성)'),
                onPressed: () {
                  Firestore.instance
                      .collection("test")
                      .add({'title':'title', 'content':'content'});
                }),
            RaisedButton(
                child: Text('데이터 삽입(이미 존재하는 document)'),
                onPressed: () {
                  Firestore.instance
                      .collection("test")
                      .document("read")
                      .setData({'title':'newTitle', 'column':'test'});
                }),
            RaisedButton(
                child: Text('데이터 읽기'),
                onPressed: () {
                  Firestore.instance
                      .collection("test")
                      .document("read")
                      .get()
                      .then((DocumentSnapshot ds) {
                         print(ds['title']);
                         print(ds['column']);
                  });
                }),
            RaisedButton(
                child: Text('데이터 수정'),
                onPressed: () {
                  Firestore.instance
                      .collection("test")
                      .document("read")
                      .updateData({'title':'newTitle2'});
                }),
            RaisedButton(
                child: Text('데이터 삭제'),
                onPressed: () {
                  Firestore.instance
                      .collection("test")
                      .document("read")
                      .delete();
                }),
          ],
        ));
  }
}
