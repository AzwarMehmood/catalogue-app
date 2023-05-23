import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageURL =
        "https://media.licdn.com/dms/image/D5603AQFp5nkCi-Bx3g/profile-displayphoto-shrink_800_800/0/1665174302654?e=2147483647&v=beta&t=sRSGI137rKUE1oCbkGgKYi5pCDGreHlXZV1WSS_Bo_E";

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Azwar Mehmood"),
                accountEmail: Text("azwarmehmood@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(ImageURL),
                ),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.teal,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.teal, fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.teal,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.teal, fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.teal,
            ),
            title: Text(
              "Mail me",
              style: TextStyle(color: Colors.teal, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
