import 'package:flutter/material.dart';

class TourApp extends StatelessWidget {
  TourApp({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/2165182012/photo/kuala-lumpur-city-view-at-night-with-saloma-bridge-connecting-the-old-and-new-city-buildings.webp?a=1&b=1&s=612x612&w=0&k=20&c=ZwGfA3cgdTfrbp_CNLlDtivooyG1XP5BNl_Qcrz2ZVM="), fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  left: 15,
                  child: Column(
                    children: [
                      Text("Explore The world", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 15,
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Destination...',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
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
                      Flexible(
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15), // Adjust radius as needed
                              child: Image.network(
                                'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8UGFyaXN8ZW58MHx8MHx8fDA%3D',
                                fit: BoxFit.cover,
                                width: 180, // or double.infinity
                                height: 120,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 10,
                              child: Text("Paris", style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18
                              ),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Flexible(
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15), // Adjust radius as needed
                              child: Image.network(
                                'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG9jZWFufGVufDB8fDB8fHww',
                                fit: BoxFit.cover,
                                width: 180, // or double.infinity
                                height: 120,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 10,
                              child: Text("Maldives", style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18
                              ),),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Flexible(
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15), // Adjust radius as needed
                              child: Image.network(
                                'https://plus.unsplash.com/premium_photo-1733317416241-d92ba6af4e51?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fER1YmFpfGVufDB8fDB8fHww',
                                fit: BoxFit.cover,
                                width: 180, // or double.infinity
                                height: 120,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 10,
                              child: Text("Dubai", style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18
                              ),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Flexible(
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15), // Adjust radius as needed
                              child: Image.network(
                                'https://media.istockphoto.com/id/2103822423/photo/aerial-view-of-a-serene-beach-dreamland-with-golden-sands-rocky-cliffs-and-crystal-blue.webp?a=1&b=1&s=612x612&w=0&k=20&c=A5bptWYALRcoLsnfpVqXw0nNepLIAPSzkKVmuujGqfo=',
                                fit: BoxFit.cover,
                                width: 180, // or double.infinity
                                height: 120,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 10,
                              child: Text("Bali", style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18
                              ),),
                            )
                          ],
                        ),
                      ),
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