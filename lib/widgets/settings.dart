import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset('assets/p1.jpg',
                        height: 65, width: 65, fit: BoxFit.cover),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dani Daniels',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('Hey there! I am using WhatsApp.',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black.withOpacity(0.6),
                                    fontWeight: FontWeight.w500))
                          ]))
                ],
              ),
            ),
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Icon(Icons.key),
              ),
              title: Text(
                'Account',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                'Privacy, security, change number',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Icon(Icons.emoji_emotions_outlined),
              ),
              title: Text(
                'Avatars',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                'Profile photo, name, about',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Icon(Icons.chat),
              ),
              title: Text(
                'Chats',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                'Theme, wallpapers, chat history',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Icon(Icons.notifications),
              ),
              title: Text(
                'Notifications',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                'Message, group & call tones',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Icon(Icons.circle_outlined),
              ),
              title: Text(
                'Storage and data',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                'Network usage, auto-download',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Icon(Icons.help),
              ),
              title: Text(
                'Help',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                'FAQ, contact us, privacy policy',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Icon(Icons.people_alt),
              ),
              title: Text(
                'Invite a friend',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Column(
              children: [
                const Text('from'),
                Text(
                  'Meta',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
