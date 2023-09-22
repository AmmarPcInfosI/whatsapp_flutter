import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/componets/setting_list.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.greenAccent.shade400,
          title: Text('Settings'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/12601624/pexels-photo-12601624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      radius: 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Programmer',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Hey there, I am using whatsapp.'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.safety_check),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Account',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Primary security, Change number'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.chat),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Chats',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Theme, wallpapers, chat History'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.ring_volume),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Notifications',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Primary security, Change number'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SettingList(
                name: 'Help',
                icon: Icons.help_outline_rounded,
                desp: 'Help center, contact us, privacy policy'),
            SettingList(name: 'Invite a Friend', icon: Icons.people, desp: ''),
            Container(margin:EdgeInsets.all(30),
              child: Center(
                child: Column(
                  children: [
                    Text('from'),
                    Text('Facebook',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
