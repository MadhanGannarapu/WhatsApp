import 'package:flutter/material.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars2.githubusercontent.com/u/20743181?s=460&v=4'),
                  ),
                  title: Text('Madhan Gannarapu'),
                  subtitle: Text('hello'),
                ),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars2.githubusercontent.com/u/20743181?s=460&v=4'),
                  ),
                  title: Text('Pavan Kumar'),
                  subtitle: Text('hi'),
                ),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars2.githubusercontent.com/u/20743181?s=460&v=4'),
                  ),
                  title: Text('Divya Rani'),
                  subtitle: Text('hey'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
