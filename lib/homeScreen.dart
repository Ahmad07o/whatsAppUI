import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('WhatsApp', style: TextStyle(color: Colors.white)),
            ),
            backgroundColor: Colors.teal,
            bottom: TabBar(
              tabs: [
                Tab(child: Icon(Icons.search)),
                Text('chats', style: TextStyle(fontSize: 16)),
                Text('status', style: TextStyle(fontSize: 16)),
                Text('calls', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              Text('Camera'),
              Text('chat'),
              Text('status'),
              Text('calls'),
            ],
          ),
        ),
      ),
    );
  }
}
