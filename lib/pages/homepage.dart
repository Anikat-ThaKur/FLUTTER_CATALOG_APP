import "package:flutter/material.dart";
import "package:flutter_projects/widgets/Drawer.dart";

class HomePage extends StatelessWidget {

  int day =1;

  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
      appBar: AppBar(
        title: Text("New App")
      ),
        body: Center(
        child: Container(
      child: Text("heres my newApp first on $day day "),

    ),
    ),
      drawer: MyDrawer(),
    );
  }
}