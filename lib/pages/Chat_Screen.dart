import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:whatsapp_homepage/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => new Column(children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              Title(
                color: Colors.white,
                child: Column(children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(dummyData[i].avatarUrl),
                        ),
                        Title(
                          color: Colors.grey,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  dummyData[i].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Title(
                                    color: Colors.grey,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          dummyData[i].message,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Title(
                                          color: Colors.white,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: <Widget>[
                                              Text(dummyData[i].time)
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ]),
                        ),
                      ])),
                ]),
              ),
            ]));
  }
}
