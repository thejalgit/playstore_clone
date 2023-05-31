import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_clone/opening_page.dart';

class Homepage extends StatefulWidget {
   Homepage({Key? key,this.tabname='For you'}) : super(key: key);
String tabname;
  @override
  State<Homepage> createState() => _HomepageState();

}

class _HomepageState extends State<Homepage> {
  int selectindex=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(

          title: SizedBox(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: Icon(Icons.mic),
                suffixIconColor: CupertinoColors.white,
                label: Text(
                  'search for apps & ga..',
                  style: TextStyle(fontSize: 15, color: CupertinoColors.white),
                ),
              ),
            ),
          ),
          leading: Icon(Icons.search),
          actions: [
            Icon(Icons.add_alert_rounded),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s.hs-data.com/bilder/spieler/gross/13029.jpg'),
              radius: 12,
            ),
          ],
          bottom: TabBar(tabs: [
            Tab(
              text:widget.tabname ,
            ),
            Tab(text: 'Top charts'),
            Tab(
              text: ('other devices'),
              iconMargin: EdgeInsetsGeometry.infinity,
            ),
            Tab(
              text: ('children'),
            ),


          ]),
        ),
        body: TabBarView(
          children: [
            Firstpage(

            ),
            Firstpage(),
            Firstpage(),
            Firstpage(),


          ],


        ),





        ),

    );


  }
}
