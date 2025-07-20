import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertDialogPractice extends StatelessWidget {
  const AlertDialogPractice({super.key});

  @override
  Widget build(BuildContext context){



    void alertDialogV1(){
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context)=>AlertDialog(
        title: Text("This is alert dialog"),
          // like subtitle or any other content of alert dialog messages
          content: Text("This is content"),
          actions: [
            //IconButton(onPressed: (){}, icon: Icon(Icons.mark_email_read))
            TextButton(onPressed: (){}, child: Text("Ok")),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Cancel"))
          ],
      ));
    }

    //showAlertDialogWithIcon

    void alertDialogV2(){
      showDialog(
          context: context,
          builder: (context)=>AlertDialog(
            title: Row(
              children: [
                Icon(Icons.warning,color: Colors.red,size: 40,),
                SizedBox(width: 5,),
                Text('Warning')
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(Icons.warning_amber,color: Colors.red,size: 35,),
                    SizedBox(width: 5,),
                    Text('Something went wrong!')
                  ],
                ),
                SizedBox(height: 10,),
                Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Ok'))
            ],
          ),
      );
    }

    // simple dialog
    void alertDialogV3(){
      showDialog(
          context: context,
          builder: (context)=>SimpleDialog(
            title: Text("This is simple dialog"),
            children: [
              SimpleDialogOption(
                child: Text('Option-1'),
              ),
              SimpleDialogOption(
                child: Column(
                  children: [
                    TextField(),
                    TextField(),
                  ],
                ),
              )
            ],
          )
      );
    }

    //bottom sheet alertdialog
    void alertDialogV4(){
      showModalBottomSheet(
        context: context,
        builder: (context)=>Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Chose option', style: TextStyle(
                fontSize: 18,
              ),),
              ListTile(
                title: Text('Option-1'),
                onTap: (){},
                onLongPress: (){},
              ),
              ListTile(
                title: Text('Option-1'),
                onLongPress: (){},
              ),

              ListTile(
                title: Text('Option-1'),
              ),

              ListTile(
                title: Text('Option-1'),
              ),

              SizedBox(
                  width: 300,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Save')))
            ],
          ),
        )
      );
    }

    // out of topic dialog

    //IOS style
    void alertDialogCupertino() {
      showCupertinoDialog(context: context, builder: (context)=>CupertinoAlertDialog(
        title: Text('iOS Style Dialog'),
        content: Text('This is a Cupertino-style alert dialog.'),
        actions: [
          CupertinoDialogAction(
            child: Text('Cancel'),
            onPressed: () => Navigator.pop(context),
          ),
          CupertinoDialogAction(
            child: Text('Ok'),
            onPressed: () {},
          ),
        ],
      ));
    }

    //AboutDialog (for App Info)
    void alertDialogAbout() {
      showAboutDialog(
          context: context,
        applicationName: "Alert Dialog",
        applicationVersion: '1.0.0',
        applicationIcon: FlutterLogo(),
        children: [
          Text('This app is created by Tanvir as a learning project.'),
        ],
      );
    }

    // custom design
    void alertDialogCustom(){
      showDialog(context: context, builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
            padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Custom Dialog", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              FlutterLogo(size: 50),
              SizedBox(height: 10),
              Text("You can fully customize this dialog"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () => Navigator.pop(context), child: Text('Close'))
                ],
              )
            ],
          ),
        ),
      ));
    }


    void showDatePickerDialog() async {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      );
    }

    void showTimePickerDialog() async {
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );
    }


    // advanced bottom sheet
    void alertDialogDraggableBottomSheet() {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => DraggableScrollableSheet(
          expand: false,
          builder: (context, scrollController) => Container(
            padding: EdgeInsets.all(16),
            child: ListView.builder(
              controller: scrollController,
              itemCount: 20,
              itemBuilder: (_, index) => ListTile(
                title: Text('Item $index'),
              ),
            ),
          ),
        ),
      );
    }








    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                alertDialogV1();
              }, child:Text('Alert Dialog') ),

              ElevatedButton(onPressed: (){
                alertDialogV2();
              }, child:Text('Alert Dialog with Icon') ),

              ElevatedButton(onPressed: (){
                alertDialogV3();
              }, child:Text('Simple Dialog') ),

              ElevatedButton(onPressed: (){
                alertDialogV4();
              }, child:Text('Bottom sheet') ),

              ElevatedButton(onPressed: (){
                alertDialogCupertino();
              }, child:Text('IOS style dialog') ),

              ElevatedButton(onPressed: (){
                alertDialogCustom();
              }, child:Text('Custom Design Dialog') ),

              ElevatedButton(onPressed: (){
                alertDialogAbout();
              }, child:Text('About Dialog') ),

              ElevatedButton(onPressed: (){
                showDatePickerDialog();
              }, child:Text('Date Picker dialog') ),

              ElevatedButton(onPressed: (){
                showTimePickerDialog();
              }, child:Text('Time Picker dialog') ),

              ElevatedButton(onPressed: (){
                alertDialogDraggableBottomSheet();
              }, child:Text('Draggable Bottom sheet') ),
            ],
          )
      ),
    );
  }
}