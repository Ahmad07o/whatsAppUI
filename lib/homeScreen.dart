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
            actions: [
              Icon(Icons.search),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                  PopupMenuItem(value: 1, child: Text('New Group')),
                  PopupMenuItem(value: 2, child: Text('Settings')),
                  PopupMenuItem(value: 3, child: Text('Logout')),
                ],
              ),
              SizedBox(width: 10),
            ],
            backgroundColor: Colors.teal,
            bottom: TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(
                  child: Text(
                    'chats',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    'status',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    'calls',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://i.etsystatic.com/13924065/r/il/f9f929/5636214818/il_fullxfull.5636214818_r4vi.jpg',
                      ),
                    ),
                    title: Text('Randy ortan'),
                    subtitle: Text('where is john cena'),
                    trailing: Text('6:36'),
                  );
                },
              ),
              Text('status'),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://i.etsystatic.com/13924065/r/il/f9f929/5636214818/il_fullxfull.5636214818_r4vi.jpg',
                      ),
                    ),
                    title: Text('Randy ortan'),
                    subtitle: Text(
                      index / 2 == 0
                          ? 'you missed call'
                          : 'you missed video call',
                    ),
                    trailing: Icon(
                      index / 2 == 0 ? Icons.phone : Icons.video_call,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
