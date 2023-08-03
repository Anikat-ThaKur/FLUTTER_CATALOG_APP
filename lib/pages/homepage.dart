import "dart:convert";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_projects/models/catalog.dart";
import "package:flutter_projects/widgets/home_widgets/catalog_header.dart";
import "package:flutter_projects/widgets/home_widgets/catalog_list.dart";

import "package:flutter_projects/widgets/themes.dart";
import "package:velocity_x/velocity_x.dart";



class HomePage extends StatefulWidget {
  const HomePage({super.key});


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
      backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if(CatalogModel.items.isNotEmpty && CatalogModel.items.length >1)
                CatalogList().py16().expand()
                else
                 Center(child: CircularProgressIndicator().centered(),)
              ],
            
            ),
          ),
        )
    );
  }
}
