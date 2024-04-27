import 'package:flutter/material.dart';
import 'package:blouse_boutique/screen/home_page.dart';

class navigatorbar extends StatefulWidget {
  const navigatorbar({super.key});

  @override
  State<navigatorbar> createState() => _navigatorbarState();
}

class _navigatorbarState extends State<navigatorbar> {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: const Text('Home', style: TextStyle(color: Colors.white)),
        ),
        drawer: const NavigationDrawer(),
      );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) =>
      Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) =>
      Container(
        padding: EdgeInsets.only(
          top: MediaQuery
              .of(context)
              .padding
              .top,
        ),
      );

  Widget buildMenuItems(BuildContext context) =>
      Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16, // vertical spacing
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  )),
            ),
            ListTile(
              leading: const Icon(Icons.favorite_border),
              title: const Text('Favourites'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.workspaces_outline),
              title: const Text('Workflow'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text('updates'),
              onTap: () {},
            ),
            const Divider(color: Colors.black),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text('Plugins'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications_none_outlined),
              title: const Text('Notifcation'),
              onTap: () {},
            ),
          ],
        ),
      );
}