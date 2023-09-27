import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for (int i = 1; i < 5; i++)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: new Image.asset('assets/p$i.jpg',
                          height: 60, width: 60, fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Friend $i',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.call_received,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                Text('(1) Today, 12:00 pm',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black.withOpacity(0.6),
                                        fontWeight: FontWeight.w500)),
                              ],
                            )
                          ]),
                    ),
                    const Spacer(),
                    Container(
                      child: const Icon(
                        Icons.call_sharp,
                        color: Color(0xff075e55),
                      ),
                    )
                  ],
                ),
              ),
            for (int i = 5; i < 10; i++)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: new Image.asset('assets/p$i.jpg',
                          height: 60, width: 60, fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Friend $i',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.call_received,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                Text('(1) Today, 12:00 pm',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black.withOpacity(0.6),
                                        fontWeight: FontWeight.w500)),
                              ],
                            )
                          ]),
                    ),
                    const Spacer(),
                    Container(
                      child: const Icon(
                        CupertinoIcons.videocam_fill,
                        color: Color(0xff075e55),
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
