import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/ChatsWidgets.dart';
import 'package:whatsapp/widgets/StatusWidget.dart';
import 'package:whatsapp/widgets/callswidgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: AppBar(
                elevation: 0,
                title: const Padding(
                    padding: EdgeInsets.only(top: 9.0),
                    child: Text(
                      'WhatsApp',
                      style: TextStyle(fontSize: 22),
                    )),
                actions: [
                  const Padding(
                      padding: EdgeInsets.only(top: 12.0, right: 15.0),
                      child: Icon(
                        Icons.search,
                        size: 28,
                      )),
                  PopupMenuButton(
                    onSelected: (value) {
                      if (value == 6) {
                        Navigator.pushNamed(context, 'Settings');
                      }
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                          value: 1,
                          child: Text(
                            'New Group',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      const PopupMenuItem(
                          value: 2,
                          child: Text(
                            'New Broadcast',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      const PopupMenuItem(
                          value: 3,
                          child: Text(
                            'Linked Devices',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      const PopupMenuItem(
                          value: 4,
                          child: Text(
                            'Starred Messages',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      const PopupMenuItem(
                          value: 5,
                          child: Text(
                            'Payments',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      const PopupMenuItem(
                          value: 6,
                          child: Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ))
                    ],
                    color: Colors.white,
                    iconSize: 28,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                  )
                ],
              )),
          body: Column(
            children: [
              Container(
                color: const Color(0xff075e55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle:
                      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    //tab1
                    const SizedBox(
                      width: 24,
                      child: Tab(icon: Icon(Icons.camera_alt)),
                    ),
                    //tab2
                    SizedBox(
                      width: 90,
                      child: Tab(
                          child: Row(
                        children: [
                          const Text('CHATS'),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              '10',
                              style: TextStyle(
                                  color: Color(0xff075e55), fontSize: 13),
                            ),
                          ),
                        ],
                      )),
                    ),
                    const SizedBox(
                      width: 85,
                      child: Tab(
                        child: Text('STATUS'),
                      ),
                    ),
                    const SizedBox(
                      width: 85,
                      child: Tab(
                        child: Text('CALLS'),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(children: [
                    Container(
                      color: Colors.black,
                    ),
                    //tab2
                    const ChatWidget(),
                    //tab3
                    const StatusWidget(),
                    //tab4
                    const CallWidget()
                  ])),
            ],
          ),
        ));
  }
}
