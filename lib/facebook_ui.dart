import 'package:flutter/material.dart';
import 'package:ostad_flutter/ticket_card.dart';
import 'package:ostad_flutter/tour_app.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text('My Tab Book 📖'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            dividerColor: Colors.black,
            labelColor: Colors.blueAccent,
            tabs: [
              Tab(icon: Icon(Icons.home_outlined, size: 35,),),
              Tab(icon: Icon(Icons.ondemand_video, size: 35),),
              Tab(icon: Icon(Icons.person_add_sharp, size: 35),),
              Tab(icon: Icon(Icons.person, size: 35),),
              Tab(icon: Icon(Icons.notifications, size: 35),),
              Tab(icon: Icon(Icons.menu_book_rounded, size: 35),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
          ],
        ),
      ),
    );

  }
}