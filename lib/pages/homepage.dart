import "package:flutter/material.dart";
import "package:flutter_projects/models/catalog.dart";
import "package:flutter_projects/widgets/Drawer.dart";
import "package:flutter_projects/widgets/item_widget.dart";

class HomePage extends StatelessWidget {

  int day =1;

  @override
  Widget build(BuildContext context) {
     
     final dummyList =List.generate(10, (index)=> CatalogModel.items[0]);
     return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App"
          )
        
      ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            //for displaying the item
            itemBuilder: (context,index) {
              return ItemWidget(
                item: dummyList[index]);
        
            },
          ),
        ),
      drawer: MyDrawer(),
    );
  }
}