import "dart:convert";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_projects/models/catalog.dart";
import "package:flutter_projects/widgets/Drawer.dart";
import "package:flutter_projects/widgets/item_widget.dart";

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogjson=await rootBundle.loadString("assets/files/catalog.json");
    final decodedData= jsonDecode(catalogjson);
    var productsData= decodedData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
      
    });


    

  }

  @override
  Widget build(BuildContext context) {
     
     
     return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App"
          )
        
      ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: (CatalogModel.items.isNotEmpty && CatalogModel.items.length > 1 )
           ? GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,

              ), 
            itemBuilder: (context,index){
              final item = CatalogModel.items[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GridTile(
                  header: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.deepPurple,

                    ),
                    child: Text(
                      item.name,
                      style: const TextStyle(color: Colors.white),
                      ),
                    

                    ),
                  child: Image.network(item.image),
                  footer: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                  ),
                    child: Text(
                      item.price.toString(),
                      style: const TextStyle(color: Colors.white),
                      )
                  
                  )
              

                
                )
              );
            },
            itemCount: CatalogModel.items.length,


            )
           : Center(
            child: CircularProgressIndicator(),
          ),
        ),
      drawer: MyDrawer(),
    );
  }
}