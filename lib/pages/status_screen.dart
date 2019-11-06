import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: StreamBuilder(
        stream: Firestore.instance.collection('chat').snapshots(),
        builder: (context, snapshot) {
          // return Container();
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Container(child: CircularProgressIndicator());
              break;
            default:
              // return Container(child: Text('success ${snapshot.data.documents['name'].toString()}'));
              return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: <Widget>[
                      Text(snapshot.data.documents[index]['name']),
                      Text(snapshot.data.documents[index]['chat']),
                    ],
                  );
                },
              );
              break;
          }
        },
      )),
    );
  }
}
