import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'slide to cancel',
    home: SlideToCancel(),     
    );
  }
}
class SlideToCancel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slide To Cancel Demo", style:  TextStyle(color: Color(0xff4a4a4a), fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SliderButton(action: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Result();
          }))
        },
        
        label: Text("Slide to cancel", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.black,
        ),
       
        ),
        
        icon: Center(
          child: Icon(
            Icons.cancel,size: 40,
            color: Colors.black,
         
          ),
        ),
        boxShadow: BoxShadow(
          color: Colors.green[900],
          blurRadius: 9.0,
        ),
        buttonSize: 70,
        shimmer: true,
        vibrationFlag: true,
       
        width: 250,
        height: 70,
        radius: 10,
        buttonColor: Colors.red,
        backgroundColor: Colors.grey,
        highlightedColor: Colors.red,
        baseColor: Colors.black,
         ),
      )
      
    );
  }
}
 
 class Result extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Container(
       child: Center(child: Text("Task canceled successfully")),
       
     );
   }
 }

