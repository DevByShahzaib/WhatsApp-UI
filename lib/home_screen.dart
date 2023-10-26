import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:  AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(child: Text('Chats')),
                Tab(child: Text('Status')),
                Tab(child: Text('Calls')),

              ]),
          actions:  [
            Icon(Icons.search),
            // SizedBox(width: 2,),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) =>[
                  PopupMenuItem(
                      value: '1',
                      child:Text('new group') ),
                  PopupMenuItem(
                      value: '2',
                      child:Text('Setting') ),
                  PopupMenuItem(
                      value: '3',
                      child:Text('Logout') ),
              ]),
            SizedBox(width: 10,),
          ],
        ),
        body: TabBarView(children:[
          Ink.image(
              image: NetworkImage('https://e0.pxfuel.com/wallpapers/95/231/desktop-wallpaper-in-inspirational-quotes-success-key-full-quotes-with-quotes.jpg'),
              fit: BoxFit.fill,),

          ListView.builder(itemCount: 20,itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk1gAp1WeP6Wcz7XmquQHzrCQMsBuXXSBElyJ8q6lnXaectDqrCKlvE7B76_dBc9Cc59k&usqp=CAU'),
              ),
              title: Text('John Wick'),
              subtitle: Text('Where is my Dog'),
              trailing: Text('3:33 AM'),
            );
          }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text('New Updates'),
                ),
              Expanded(
                child: ListView.builder(
                  itemCount: 50,
                    itemBuilder: (context, index){
                     return ListTile(
                      leading : Container(
                      decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                      color: Colors.green,
                      width: 2
                      )
                      ),
                      child: CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk1gAp1WeP6Wcz7XmquQHzrCQMsBuXXSBElyJ8q6lnXaectDqrCKlvE7B76_dBc9Cc59k&usqp=CAU'),
                      ),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text(index.toString() + ' mints ago'),
                      );





                }),
              ),
            ],
          ),
          ListView.builder(itemCount: 20,itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk1gAp1WeP6Wcz7XmquQHzrCQMsBuXXSBElyJ8q6lnXaectDqrCKlvE7B76_dBc9Cc59k&usqp=CAU'),
              ),
              title: Text('John Wick', style: TextStyle(color: index%3==0? Colors.red : Colors.green), ),
              subtitle: Row(children: [
                Icon(Icons.call_received_outlined,color:index%3==0? Colors.red : Colors.green ,),
                Text('Today 5:30 PM'),
              ],),
              trailing:  Icon(index % 4==0?Icons.videocam_rounded :  Icons.call,color: Colors.teal,),
            );
          }),
        ]),
      ),
    );
  }
}
