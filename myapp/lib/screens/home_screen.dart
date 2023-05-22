import 'package:flutter/material.dart';
import 'package:myapp/Activity/grideView.dart';
import 'package:myapp/Fragment/SocialDistanceFragment.dart';
import 'package:myapp/widget/input_modal.dart';

import '../Fragment/activityFragment.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var myItems = [
    {"img": "https://loremflickr.com/320/240", "title": "A"},
    {"img": "https://loremflickr.com/320/240", "title": "B"},
    {"img": "https://loremflickr.com/320/240", "title": "C"},
    {"img": "https://loremflickr.com/320/240", "title": "D"},
    {"img": "https://loremflickr.com/320/240", "title": "E"},
    {"img": "https://loremflickr.com/320/240", "title": "F"},
    {"img": "https://loremflickr.com/320/240", "title": "G"},
    {"img": "https://loremflickr.com/320/240", "title": "H"},
    {"img": "https://loremflickr.com/320/240", "title": "I"},
    {"img": "https://loremflickr.com/320/240", "title": "J"},
    {"img": "https://loremflickr.com/320/240", "title": "K"},
    {"img": "https://loremflickr.com/320/240", "title": "L"},
    {"img": "https://loremflickr.com/320/240", "title": "M"},
    {"img": "https://loremflickr.com/320/240", "title": "N"},
    {"img": "https://loremflickr.com/320/240", "title": "O"},
    {"img": "https://loremflickr.com/320/240", "title": "P"}
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Walidulhasan",
                      style: TextStyle(color: Colors.black),
                    ),
                    accountEmail: Text(
                      "fiverrwalid@gmail.com",
                      style: TextStyle(color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 213, 213)),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://media.licdn.com/dms/image/C5603AQFLAf7xIU3-PQ/profile-displayphoto-shrink_800_800/0/1602647137660?e=2147483647&v=beta&t=HVHz7dOpWVa-CNwLFgLA-SOxn3XQ_tiSu0ZLsgx7ZD8"),
                    ),
                  )),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
              ),
              const ListTile(
                leading: Icon(Icons.display_settings),
                title: Text("Display Mood"),
              ),
              const ListTile(
                leading: Icon(Icons.font_download),
                title: Text("Font"),
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text("History"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GrideView()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("MY App"),
          bottom: const TabBar(isScrollable: true, tabs: [
            Tab(
              icon: Icon(Icons.social_distance),
              text: "Social Distance",
            ),
            Tab(
              icon: Icon(Icons.local_activity),
              text: "Activity",
            )
          ]),
          titleSpacing: 10,
          actions: [
            IconButton(
                onPressed: () {
                  showInputModal(context);
                },
                icon: const Icon(Icons.comment)),
            IconButton(
                onPressed: () {
                  mySnacksAction("I am Search", context);
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  mySnacksAction("I am Settings", context);
                },
                icon: const Icon(Icons.settings)),
            IconButton(
                onPressed: () {
                  mySnacksAction("I am email", context);
                },
                icon: const Icon(Icons.email))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            mySnacksAction("I am Floating Action Button", context);
          },
          elevation: 10,
          child: const Icon(Icons.add),
        ),
        body: const TabBarView(children: [
          SocialDistanceFragment(),
          ActivityFragment(),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                label: "Person"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.phone,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                label: "Contract"),
          ],
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          onTap: (int index) {
            if (index == 0) {
              mySnacksAction("I am Persone bottom Menu", context);
            } else if (index == 1) {
              mySnacksAction("I am Home bottom Menu", context);
            } else {
              mySnacksAction("I am Contract bottom Menu", context);
            }
          },
          backgroundColor: const Color.fromARGB(255, 10, 1, 51),
        ),
      ),
    );
  }
}
