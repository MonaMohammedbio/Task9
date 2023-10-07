import 'package:flutter/material.dart';

class mysecondscreen extends StatefulWidget {
  var data;
  var passdata;
   mysecondscreen({this.data,this.passdata,super.key});

  @override
  State<mysecondscreen> createState() => _mysecondscreenState();
}

class _mysecondscreenState extends State<mysecondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar( automaticallyImplyLeading: false), body: Center(
      child: Column(
        children: [
          Text("${widget.data}"),
          Text("${widget.passdata}"),

          ElevatedButton(onPressed:(){Navigator.pop(context);   } , child: Icon(Icons.backpack))
        ],
      ),
    ));
  }
}
