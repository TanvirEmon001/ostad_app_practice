import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Ticket Details"),
      ),
      body: Card(
        margin: EdgeInsets.all(10),
        elevation: 5,
        child: Container(

          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey
            )
          ),
          child: Column(
            children: [
              Column(
                children: [
                  ListTile(
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(image: AssetImage("assets/img/mr_.jpg")),
                    ),
                    title: Text(
                        "M R Paribahan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "28, VOLVO B8R, AC",
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Route: ",
                              style: TextStyle(
                                  color: Colors.grey, fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Khulna - Dhaka - Ctg",
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}