import 'package:flutter/material.dart';

class Module8Class2 extends StatelessWidget {
  const Module8Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network("https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/486143241_1083541570452331_8553815400932276933_n.jpg?stp=cp6_dst-jpg_s960x960_tt6&_nc_cat=104&cb=99be929b-ca288af0&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=3825wKzs3kYQ7kNvwGEk3mR&_nc_oc=Adn8a2GezDJIuwLlvcwkmZdmLT-GgwxN5UNanwO6Xf1wQc37NMFGSrKa7eIJP-BnR4M&_nc_zt=23&_nc_ht=scontent.fdac27-1.fna&_nc_gid=LcQ7JCXUlEU5-kC34kluRA&oh=00_AfQI-f2idVo8pjhJqPIOSGUEnSWhXSjgsl8ONXpwfUjBZg&oe=687D1135"),
            SizedBox(height: 5,),
            Image.asset("assets/img/ai_img.png")
          ],
        ),
      ),
    );
  }
}
