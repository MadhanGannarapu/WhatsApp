import 'package:flutter/material.dart';
import 'package:todo/pages/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/pages/status_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(
        title: 'WhatsApp',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final data = Firestore.instance.collection('chat');

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Color.fromRGBO(7, 94, 84, 01),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Text("Camera page")),
            ChartScreen(),
            StatusScreen(),
            Center(child: Text("calls page")),
          ],
        ),
        floatingActionButton: _floatingActionButton(),
      ),
    );
  }

  Widget _floatingActionButton() {
    return switchTabs(_tabController.index);
  }

  switchTabs(index) {
    print('index $index');
    switch (index.toString()) {
      case "0":
        return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.camera),
          backgroundColor: Color.fromRGBO(37, 211, 102, 01),
        );
      case "1":
        return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
          backgroundColor: Color.fromRGBO(37, 211, 102, 01),
        );
      case "2":
        return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.dashboard),
          backgroundColor: Color.fromRGBO(37, 211, 102, 01),
        );
      case "3":
        return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.call),
          backgroundColor: Color.fromRGBO(37, 211, 102, 01),
        );
      default:
        return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
          backgroundColor: Color.fromRGBO(37, 211, 102, 01),
        );
    }
  }
}
