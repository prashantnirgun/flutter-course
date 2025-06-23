import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
          IconButton(onPressed: () {}, icon: Icon(Icons.photo_camera)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),

      body: Wa(),
      bottomNavigationBar: Container(
        //        color: Colors.blueGrey[900],
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min, // prevents Column from expanding
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Transform.rotate(
                      angle: 3.1416, // 180 degrees in radians (pi)
                      child: Icon(Icons.chat, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text('Chats', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.restart_alt, color: Colors.white),
                    SizedBox(height: 10),
                    Text('Update', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.groups, color: Colors.white),
                    SizedBox(height: 10),
                    Text('Communities', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.call, color: Colors.white),
                    SizedBox(height: 10),
                    Text('Calls', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

      // Floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open new chat or perform any action
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add_comment),
      ),
    );
  }
}

class Wa extends StatelessWidget {
  const Wa({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 59, 57, 57),
                hint: Text(
                  'Ask Meta AI or Search',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 233, 229, 229),
                    fontSize: 18,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                  color: const Color.fromARGB(255, 233, 229, 229),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Unread 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Favourities',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Groups 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(Icons.account_circle, color: Colors.yellow, size: 60),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Amol Tajane',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'ढवळे आहे ६२ ला कुडेकर नाही',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('29/05/25', style: TextStyle(color: Colors.white)),
                    Icon(Icons.push_pin, color: Colors.white),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.face, color: Colors.green, size: 60),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Savi Nirgun',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(Icons.done_all, color: Colors.white),
                          Text(
                            ' 10:41 ls msg received',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('11:07 am', style: TextStyle(color: Colors.white)),
                    Icon(Icons.push_pin, color: Colors.white),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.whatshot, color: Colors.blue, size: 60),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Prashant Nirgun',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(Icons.done_all, color: Colors.white),
                          SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              ' If I have Poppings-Regular font and',
                              style: TextStyle(
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Yesturday', style: TextStyle(color: Colors.white)),
                    Icon(Icons.push_pin, color: Colors.white),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.webhook, color: Colors.deepPurple, size: 60),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Crazy Cousins 🐈 🐱 🐴',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(Icons.done_all, color: Colors.white),
                          Text(
                            ' Happy Birthday ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('2:30 pm', style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Icon(Icons.notifications_off, color: Colors.white),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.emoji_events, color: Colors.deepOrange, size: 60),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Santosh Bochare',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(Icons.done_all, color: Colors.white),
                          Text(
                            ' Tera to beda gark ho gaya hai',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('1:55 pm', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.coronavirus, color: Colors.greenAccent, size: 60),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sathe Premises',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(Icons.done_all, color: Colors.white),
                          Text(
                            ' Tera to beda gark ho gaya hai',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('1:55 pm', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.handshake, color: Colors.grey, size: 60),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Allot digital solutions',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(Icons.done_all, color: Colors.white),
                          Text(
                            ' Good morning',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('12:06 pm', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.format_shapes, color: Colors.red, size: 60),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kailash Wayker',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(Icons.image, color: Colors.white),
                          Text(' Photo', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('12:06 pm', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
