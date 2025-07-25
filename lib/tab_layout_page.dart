import 'package:flutter/material.dart';
import 'package:ostad_flutter/ticket_card.dart';
import 'package:ostad_flutter/tour_app.dart';

class TabLayoutPage extends StatelessWidget {
  const TabLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Tab Book 📖'),
            bottom: TabBar(
              tabs: [
                Tab(text: "Toys 🧸"),
                Tab(text: "Snacks 🍭"),
                Tab(text: "Cartoons 📺"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: TourApp()),
              Center(child: TicketCard()),
              Center(child: Text("Watch your favorite cartoons! 🎬")),
            ],
          ),
        )
    );
  }
}