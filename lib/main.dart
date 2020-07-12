import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contador Bidireccional"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Center(
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                 Text("$counter",style: TextStyle(fontSize: 140,fontStyle: FontStyle.normal,color: Colors.green),),
                SizedBox(height: 150,),
                Row(
                  mainAxisSize: MainAxisSize.max,
               children: <Widget>[
                OutlineButton.icon(onPressed: (){setState(() {
                  if(counter>0)counter--;
                });},shape: StadiumBorder(),highlightColor: Colors.red,highlightedBorderColor: Colors.red,
                 icon : Icon(Icons.remove),label: Text("Remove"),padding:EdgeInsets.all(20),color: Colors.red,),
                 SizedBox(width: 100),
                OutlineButton.icon(onPressed: (){setState(() {
                if (counter<20)counter++;
                });},highlightColor: Colors.green,highlightedBorderColor: Colors.green,shape: StadiumBorder(),
                 icon: Icon(Icons.add),label:Text("Add"),padding:EdgeInsets.all(20)),
                ],
               ),
              ],
            ),
          ),
         ),
        ),
      );
   }
}
