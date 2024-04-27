import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'home_page.dart';

/*class favouritespage extends StatefulWidget {
  const favouritespage({super.key});

  @override
  State<favouritespage> createState() => _favouritespageState();
}

class _favouritespageState extends State<favouritespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Favourites'),
        backgroundColor: Colors.green,
      ),
    );
  }
}*/

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Favourites'),
        backgroundColor: Colors.green,
      ),
    );
  }
}

