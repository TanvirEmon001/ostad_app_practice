import 'package:flutter/material.dart';

class ListViewPractice extends StatelessWidget{
  ListViewPractice({super.key});


  List<Map<String, String>> myList = [
    {"name" : "Tanvir Emon", "address" : "Chattogram"},
    {"name" : "Rakib Hossain", "address" : "Dhaka"},
    {"name" : "Jogn Doe", "address" : "London"},
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("List View"),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView.builder(
        itemCount: myList.length ,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              color: Colors.cyanAccent.shade400,
              child: ListTile(
                leading: IconButton(onPressed: (){}, icon: Icon(Icons.person_outline)),
                title: Text(myList[index]["name"]!),
                subtitle: Text(myList[index]["address"]!),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever, color: Colors.red, size: 30,)),
              ),
            ),
          );
        },
      ),
    );
  }
}