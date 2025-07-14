import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context){

    // controller
    TextEditingController _phoneController = TextEditingController();
    TextEditingController _emailController = TextEditingController();


    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Login Screen", style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.blueGrey,
        actions: [
          Icon(Icons.person_outline, size: 40, color: Colors.black,)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter your number',
                  labelText: 'Phone number',
                  prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.star, color: Colors.orange,),
                  hintStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 18
                  ),

                  labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.purple
                  ),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    )
                ),
              )
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Enter your email',
                      labelText: 'Email Address',
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: Icon(Icons.star, color: Colors.orange,),
                      hintStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 18
                      ),

                      labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.purple
                      ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      )
                  ),
                )
            ),
            SizedBox(height: 15,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.black
                ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                onPressed: (){
                  if(_phoneController.text.isEmpty && _emailController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please fill up the all fields!"))
                    );
                  }else if(_phoneController.text.length > 11){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Phone number can not be more than 11 digits"))
                    );
                  }else if(_phoneController.text.length < 11){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Phone number must be 11 digits"))
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}