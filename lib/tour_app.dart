import 'package:flutter/material.dart';
import 'package:ostad_flutter/reuseable_widget/stack_widget_view.dart';
import 'package:ostad_flutter/reuseable_widget/top_destinations.dart';

class TourApp extends StatelessWidget {
  const TourApp({super.key});

  @override
  Widget build(BuildContext context){

    List<Map<String,String>> trendingPackagesList = [
      {"name" : "Romantic Paris Getaway", "stay" : "4 nights * 5 days", "price" : "\$799", "imgLink" : "https://images.unsplash.com/photo-1549699143-b6bf1cde4605?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Um9tYW50aWMlMjBQYXJpcyUyMEdldHdheXxlbnwwfHwwfHx8MA%3D%3D"},
      {"name" : "Bali Adventure Tour", "stay" : "4 nights * 5 days", "price" : "\$599", "imgLink" : "https://images.unsplash.com/photo-1732310067314-0c0d406e7c6b?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"},
      {"name" : "Nepal Tour", "stay" : "4 nights * 5 days", "price" : "\$599", "imgLink" : "https://media.istockphoto.com/id/1755473742/photo/kathmandu-stupa.webp?a=1&b=1&s=612x612&w=0&k=20&c=ebHi0m5BarsRKMGz_GJGj7esccPRbjivYZZ5xPy8y_c="},
      {"name" : "Maldive Tour", "stay" : "4 nights * 5 days", "price" : "\$599", "imgLink" : "https://media.istockphoto.com/id/172699850/photo/climbing-everest.webp?a=1&b=1&s=612x612&w=0&k=20&c=s5kd-OXe8i0CSAYS0Ki1z0goJ-Mn1HbeGQfn8HnIemc="},
    ];


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
            "Tour App",
          style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications, color: Colors.white,))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF1C242F),//0xFF233040
        elevation: 5,
        surfaceTintColor: Colors.black,
        child: ListView(
          children: [
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Color(0xFF233040)
            //   ),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         CircleAvatar(
            //           backgroundImage: AssetImage("assets/img/ai_img.png"),
            //           radius: 42,
            //         ),
            //         Text(
            //           'Tanvir Emon',
            //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //         ),
            //         Text(
            //           '@tanviremon',
            //           style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            //         )
            //       ],
            //     )
            // ),
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Color(0xFF233040)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/img/tanvir_emon.jpg"),
                      radius: 40,
                    ),
                    SizedBox(height: 15,),
                    Text("TANVIR EMON", style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20
                    ),),
                    SizedBox(height: 5,),
                    Text("+880 1775097721", style: TextStyle(
                        color: Color(0xFF7B8FA1), fontWeight: FontWeight.bold, fontSize: 15
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text('TekniumSoft', style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold
              ),),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/img/teknium_soft.jpg"),
                radius: 30,//#121923
              ),
              onTap: () {},
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text('EMON HOSSAIN', style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold
              ),),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/img/ai_img.png"),
                radius: 30,//#121923
              ),
              onTap: () {},
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text('TANVIR EMON', style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold
              ),),
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/img/tanvir_emon.jpg"),
                    radius: 30,//#121923
                  ),
                  Positioned(
                    bottom: -2,
                      right: -2,
                      child: Icon(Icons.check_circle_rounded, color: Colors.lightBlue,)
                  )
                ],
              ),
              onTap: () {},
            ),
            SizedBox(height: 10,),
            ListTile(
              title: Text('Add Account', style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold
              ),),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add, color: Color(0xFF7C8C99), size: 40,),
              ),
              onTap: () {},
            ),
            Divider(
              color: Color(0xFF121923),
            ),
            ListTile(

              title: Text('My Profile', style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold
              ),),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.perm_identity_rounded, color: Color(0xFF7C8C99), size: 40,),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StackWidgetView(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                          "Top Destinations",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TopDestinations(destinationName: 'Paris', imageLink: 'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8UGFyaXN8ZW58MHx8MHx8fDA%3D',),
                      SizedBox(width: 10,),
                      TopDestinations(destinationName: "Maldives", imageLink: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG9jZWFufGVufDB8fDB8fHww"),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      TopDestinations(destinationName: "Dubai", imageLink: "https://plus.unsplash.com/premium_photo-1733317416241-d92ba6af4e51?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fER1YmFpfGVufDB8fDB8fHww"),
                      SizedBox(width: 10,),
                      TopDestinations(destinationName: "Bali", imageLink: "https://media.istockphoto.com/id/2103822423/photo/aerial-view-of-a-serene-beach-dreamland-with-golden-sands-rocky-cliffs-and-crystal-blue.webp?a=1&b=1&s=612x612&w=0&k=20&c=A5bptWYALRcoLsnfpVqXw0nNepLIAPSzkKVmuujGqfo=")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "Trending Packages",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                      itemCount: trendingPackagesList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.white,
                          elevation: 5,
                          child: Container(
                            height: 120,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                  child: Image.network(
                                      trendingPackagesList[index]["imgLink"]!,
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: 120,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(trendingPackagesList[index]["name"]!, style: TextStyle(
                                        color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold
                                      ),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.access_time, color: Colors.grey,),
                                          SizedBox(width: 5,),
                                          Text(
                                              trendingPackagesList[index]["stay"]!
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                              trendingPackagesList[index]["price"]!,
                                            style: TextStyle(
                                              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18
                                            ),
                                          ),
                                          SizedBox(width: 50,),
                                          Container(
                                            height: 40,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: Center(
                                                child: Text(
                                                    "Book Now",
                                                  style: TextStyle(
                                                    color: Colors.white, fontWeight: FontWeight.bold
                                                  ),
                                                )
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

