import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'favourites_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var height, width;


  List imgData = [
    "images/about.png",
    "images/job.png",
    "images/mcqs.png",
    "images/pastpapers.png",
    "images/pdf.png",
    "images/quiz.png",
    "images/about.png",
    "images/job.png",
    "images/mcqs.png",
    "images/pastpapers.png",
    "images/pdf.png",
    "images/quiz.png",
    "images/about.png",
    "images/job.png",
    "images/mcqs.png",
    "images/pastpapers.png",
  ];

  List titles = [
    "ABOUT",
    "JOB",
    "MCQS",
    "PAST PAPERS",
    "PDF",
    "QUIZ",
    "ABOUT",
    "JOB",
    "MCQS",
    "PAPERS",
    "PDF",
    "QUIZ",
    "ABOUT",
    "JOB",
    "MCQS",
    "PAST"
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        /*backgroundColor: Colors.blue.shade700,*/
        foregroundColor: Colors.white,
      ),*/
      //drawer: const NavigationDrawer(),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.indigo,
          height: height,
            width: width,
          child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                  ),
                  height: height * 0.25,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 35,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: ()=>
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const NavigationDrawer(),
                                )),
                              child: Icon(
                                Icons.sort,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "images/woman.png",
                                  )
                                )
                              ),
                              child: ClipRRect(
                                /*child: Image.asset(
                                ),*/
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dashboard",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Last Update: 7 Aug 2023",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white54,
                                letterSpacing: 1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  height: height * 0.75,
                  width: width,
                  padding: EdgeInsets.only(bottom: 20),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      mainAxisSpacing: 25,
                    ),
                    shrinkWrap: true,
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: imgData.length,
                    itemBuilder: (context, index) {
                      return  InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                imgData[index],
                                width: 100,
                              ),
                              Text(
                                titles[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
        ),
      ),

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
        color: Colors.blue.shade700,
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
              onTap: () {
                //close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FavouritePage(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspaces_outline),
              title: const Text('Workflow'),
              onTap: () {
                /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const (),
                ));*/
              },
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text('updates'),
              onTap: () {
                /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const,
                ));*/
              },
            ),
            const Divider(color: Colors.black),
            ListTile(
              leading: const Icon(Icons.account_tree_outlined),
              title: const Text('Plugins'),
              onTap: () {
                /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const (),
                ));*/
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications_none_outlined),
              title: const Text('Notifcation'),
              onTap: () {
                /*Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const (),
                ));*/
              },
            ),
          ],
        ),
      );
}
