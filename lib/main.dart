import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Light grey background
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0, // Remove shadow for clean look
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.lightGreen,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.network(
                  'https://tse2.mm.bing.net/th/id/OIP.kxPc890Pl-WTikIot05WBQHaFj?rs=1&pid=ImgDetMain&o=7&rm=3',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Global Reciprocal Colleges',
              style:TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            SizedBox(height: 20),
            Text(
                'TOUCHING HEARTS, RENEWING MINDS TRANSFORMING LIVES',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
                fontWeight: FontWeight.w500,
              ),
            ),
        Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Image.network('https://grc.edu.ph/wp-content/uploads/2020/08/LOGO_ORIGINAL-removebg-preview.png'),
                ),
                ListTile(leading: Icon(Icons.home), title: Text('HOME'), onTap: () => Navigator.pop(context)),
                ListTile(leading: Icon(Icons.settings), title: Text('SETTINGS'), onTap: () => Navigator.pop(context)),
                ListTile(leading: Icon(Icons.info), title: Text('ABOUT'), onTap: () => Navigator.pop(context)),
              ],
            ),
          ),
        )

          ],
        ),
      ),
    );
  }
}