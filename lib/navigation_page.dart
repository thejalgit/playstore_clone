import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_clone/home_page.dart';

class navigationpage extends StatefulWidget {
  const navigationpage({Key? key}) : super(key: key);

  @override
  State<navigationpage> createState() => _navigationpageState();
}

class _navigationpageState extends State<navigationpage> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        Homepage(tabname: 'dfhgjk'),
        Homepage(tabname: 'any',),
        Homepage(),
        Homepage(),

      ][selectedindex],
      // appBar: AppBar(
      //
      //     title: SizedBox(
      //       child: TextField(
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           suffixIcon: Icon(Icons.mic),
      //           suffixIconColor: CupertinoColors.white,
      //           label: Text(
      //             'search for apps & ga..',
      //             style: TextStyle(fontSize: 15, color: CupertinoColors.white),
      //           ),
      //         ),
      //       ),
      //     ),
      //     leading: Icon(Icons.search),
      //     actions: [
      //       Icon(Icons.add_alert_rounded),
      //       CircleAvatar(
      //         backgroundImage: NetworkImage(
      //             'https://s.hs-data.com/bilder/spieler/gross/13029.jpg'),
      //         radius: 12,
      //
      //       ),
      //
      //     ]),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: selectedindex,
          iconSize: 30,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports_outlined),
              label: ('Games'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: ('Apps'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined),
              label: ('offers'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add_outlined),
              label: ('Books'),
            ),
          ],
          onTap: (index) {
            setState(() {
              selectedindex=index;
            });
          }),
    );
  }
}
