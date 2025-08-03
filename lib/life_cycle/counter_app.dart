import 'package:flutter/material.dart';
import 'package:ostad_flutter/disney_queen/frozen_queen.dart';
import 'package:ostad_flutter/life_cycle/alert_dialogue.dart';

class CounterApp extends StatefulWidget {
  CounterApp({super.key}){
    // this method calls first
    print("Constructor printed at sequence 1");
  }


  @override
  State<CounterApp> createState(){
    print("This method calls after constructor at sequnce 2");
    return _CounterAppState();
  }


}


class _CounterAppState extends State<CounterApp>{

  @override
  void initState() {
    print("This method calls at sequence 3");
    super.initState();
  }

  @override
  void deactivate() {

    print('4 deactivate ');
    super.deactivate();
  }

  @override
  void dispose() {
    print('5 dispose ');
    super.dispose();
  }

  int counterValue = 0;

  void _increment(){
    counterValue++;
  }

  void _decrement(){
    counterValue--;
  }



  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FrozenQueen()));
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counterValue.toString(), style: TextStyle(fontSize: 60, color: Colors.blueAccent),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          _decrement();
                        });
                      },
                      child: Text(
                        "-",
                        style: TextStyle(
                            fontSize: 30
                        ),
                      )
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          _increment();
                        });
                      },
                      child: Text(
                        "+",
                        style: TextStyle(
                            fontSize: 30
                        ),
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}