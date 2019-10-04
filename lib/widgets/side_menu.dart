import 'package:flutter/material.dart';
import 'package:goodwork/models/user.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({this.authUser}) : super();

  final User authUser;

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.teal[400],
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.authUser.avatar),
                    radius: 30.0,
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    widget.authUser.name,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.teal[600],
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.5), BlendMode.dstATop),
                      image: NetworkImage(widget.authUser.avatar),
                      fit: BoxFit.cover)),
            ),
            ListTileTheme(
              iconColor: Colors.white,
              textColor: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 30.0,
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ListTileTheme(
              iconColor: Colors.white,
              textColor: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 30.0,
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const Divider(
              height: 10.0,
              color: Color.fromRGBO(255, 255, 255, 0.8),
            ),
            ListTileTheme(
              iconColor: Colors.white,
              textColor: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  size: 30.0,
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
