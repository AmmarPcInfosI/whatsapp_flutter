import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_flutter/models/call.dart';
import 'package:whatsapp_flutter/models/chat.dart';
import 'package:whatsapp_flutter/screens/chat_screen.dart';
import 'package:whatsapp_flutter/screens/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Chat> chats = [
    Chat(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        nmsg: 10,
        time: '10:20 PM',
        msg: 'Hi Ammar How are you'),
    Chat(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        nmsg: 10,
        time: '10:20 PM',
        msg: 'Hi Ammar How are you'),
    Chat(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        nmsg: 10,
        time: '10:20 PM',
        msg: 'Hi Ammar How are you'),
    Chat(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        nmsg: 10,
        time: '10:20 PM',
        msg: 'Hi Ammar How are you'),
    Chat(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        nmsg: 10,
        time: '10:20 PM',
        msg: 'Hi Ammar How are you'),
    Chat(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        nmsg: 10,
        time: '10:20 PM',
        msg: 'Hi Ammar How are you'),
    Chat(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        nmsg: 10,
        time: '10:20 PM',
        msg: 'Hi Ammar How are you'),
    Chat(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        nmsg: 10,
        time: '10:20 PM',
        msg: 'Hi Ammar How are you'),
    Chat(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        nmsg: 10,
        time: '10:20 PM',
        msg: 'Hi Ammar How are you'),
    Chat(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        nmsg: 10,
        time: '10:20 PM',
        msg: 'Hi Ammar How are you'),
  ];
  List<Call> calls = [
    Call(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        time: '13 September, 11:40 pm',
        cicon: Icons.call_made_sharp,
        ncalls: '(2)'),
    Call(
        uimg:
            'https://images.pexels.com/photos/18075150/pexels-photo-18075150/free-photo-of-young-man-lying-in-grass-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
        name: 'Mohammed',
        time: '13 September, 11:40 pm',
        cicon: Icons.call_made_sharp,
        ncalls: '(3)'),
    Call(
        uimg:
            'https://images.pexels.com/photos/18075150/pexels-photo-18075150/free-photo-of-young-man-lying-in-grass-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
        name: 'Ahmed',
        time: '13 September, 11:40 pm',
        cicon: Icons.call_made_sharp,
        ncalls: '(4)'),
    Call(
        uimg:
            'https://images.pexels.com/photos/18075150/pexels-photo-18075150/free-photo-of-young-man-lying-in-grass-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
        name: 'Mohammed',
        time: '13 September, 11:40 pm',
        cicon: Icons.call_made_sharp,
        ncalls: '(7)'),
    Call(
        uimg:
            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        name: 'Ammar',
        time: '13 September, 11:40 pm',
        cicon: Icons.call_made_sharp,
        ncalls: '(2)'),
    Call(
        uimg:
            'https://images.pexels.com/photos/18075150/pexels-photo-18075150/free-photo-of-young-man-lying-in-grass-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
        name: 'Mohammed',
        time: '13 September, 11:40 pm',
        cicon: Icons.call_made_sharp,
        ncalls: '(3)'),
    Call(
        uimg:
            'https://images.pexels.com/photos/18075150/pexels-photo-18075150/free-photo-of-young-man-lying-in-grass-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
        name: 'Ahmed',
        time: '13 September, 11:40 pm',
        cicon: Icons.call_made_sharp,
        ncalls: '(4)'),
    Call(
        uimg:
            'https://images.pexels.com/photos/18075150/pexels-photo-18075150/free-photo-of-young-man-lying-in-grass-with-flowers.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
        name: 'Mohammed',
        time: '13 September, 11:40 pm',
        cicon: Icons.call_made_sharp,
        ncalls: '(7)'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'WhatsApp',
            ),
            backgroundColor: Colors.greenAccent,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              )
            ]),
            actions: [
              Icon(Icons.search),
              PopupMenuButton(
                itemBuilder: (context) {
                  return ["Setting", "Quit"].map((e) {
                    return PopupMenuItem(
                      child: Text(e),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingScreen(),
                            ));
                      },
                    );
                  }).toList();
                },
              )
            ],
          ),
          body: TabBarView(children: [
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // Launch the camera app
                  final String url = 'package://com.photo.android.camera';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Could not launch the camera app.'),
                      ),
                    );
                  }
                },
                child: Text('Open Camera'),
              ),
            ),
            ListView.builder(
                shrinkWrap: false,
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    chats[index].uimg!,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        chats[index].name!,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(chats[index].msg!),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  chats[index].time!,
                                  style: TextStyle(color: Colors.greenAccent),
                                ),
                                CircleAvatar(
                                  child: Text(
                                    chats[index].nmsg!.toString(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  backgroundColor: Colors.greenAccent,
                                  radius: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ));
                }),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 33,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 31,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                    radius: 30,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'My Status',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('today, 11:36 am'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Recent updates'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 33,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 31,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                        radius: 30,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Alex',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Today, 11:45 PM'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Container(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 33,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 31,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                        radius: 30,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Alexon',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Today, 8:45 PM'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Viewed updates'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 33,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 31,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                        radius: 30,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Dear',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Yesterday, 11:45 PM'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 33,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 31,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                        radius: 30,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Dear',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Yesterday, 8:45 PM'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.greenAccent.shade400,
                            radius: 30,
                            child: Icon(Icons.insert_link),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Create call link',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  'Share a link for your WhatsApp call',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text('Recent',
                          style: TextStyle(fontSize: 20, color: Colors.grey)),
                    ),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: calls.length,
                        itemBuilder: (context, index) {
                          return Container(
                              height: MediaQuery.sizeOf(context).height * 0.1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          calls[index].uimg!,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  calls[index].name!,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 5),
                                                  child: Text(
                                                    calls[index].ncalls!,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  calls[index].cicon,
                                                  color: Colors
                                                      .greenAccent.shade400,
                                                ),
                                                Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5),
                                                    child: Text(
                                                      calls[index].time!,
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.call,
                                    size: 20,
                                    color: Colors.greenAccent.shade400,
                                  )
                                ],
                              ));
                        }),
                  ],
                ),
              ),
            )
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChatScreen(), // Initialize with an empty message list or provide initial messages
                ),
              );
            },
            child: Icon(Icons.chat),
            backgroundColor: Colors.green,
          ),
        ));
  }
}
