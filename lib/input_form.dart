import 'package:flutter/material.dart';
import 'package:ostad_flutter/list_view_practice.dart';

class InputForm extends StatelessWidget {
  const InputForm({super.key});

  @override
  Widget build(BuildContext context){

    final _formKey = GlobalKey<FormState>();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: Colors.greenAccent.shade100,
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [

                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        hintText: "Enter your name",
                        labelText: "Full Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please Enter your full name";
                      }else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                        hintText: "Enter your phone number",
                        labelText: "Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please Enter your phone number";
                      }else if(value.length != 11){
                        return 'Please enter correct phone number';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewPractice()));
                          }
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent
                      ),
                        child: Text("Login"),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}