import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photoshop"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            onTap: (){

            },
            title: Text("Open Camera"),
            leading: Icon(Icons.camera),
          ),
           ListTile(
            onTap: (){

            },
            title: Text("Open Gallery"),
            leading: Icon(Icons.image),
          ),

          

        ],
      ),
      
    );
  }
}