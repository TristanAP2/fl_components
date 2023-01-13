import 'package:flutter/material.dart';

class AlertMessageScreen extends StatelessWidget {
   
  const AlertMessageScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    showDialog(
      //True: Close the alert if click outside
      //False: Don't close the alert
      barrierDismissible: false,
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: const Center(child: Text('Warning')),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('This is the alert\'s content'),
              SizedBox(height: 20,),
              FlutterLogo(size: 100,),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close')
            )
          ],
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
        );
      }),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: 
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Show alert',
              style: TextStyle(fontSize: 20)),
            ),
          onPressed: () {
            displayDialog(context );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        //Return to the previous page
        onPressed: () => Navigator.pop(context),
      
      ),
    );
  }
}