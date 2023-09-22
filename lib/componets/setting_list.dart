import 'package:flutter/material.dart';

class SettingList extends StatelessWidget {
 SettingList({super.key, required this.name,required this.icon,required this.desp});
  String name;
  String desp;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Container(
                          margin: EdgeInsets.all(20),
                          child: Container(
                            child: Row(
                              children: [
                                Icon(icon),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(desp),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
  }
}