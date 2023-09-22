import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/screens/chat_screen.dart';

import 'package:whatsapp_flutter/screens/home_screen.dart';

class AppRoot extends StatelessWidget {
   
  
    const AppRoot({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}