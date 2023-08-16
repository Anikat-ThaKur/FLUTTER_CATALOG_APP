import "dart:convert";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_projects/models/cart.dart";
import "package:flutter_projects/models/catalog.dart";
import "package:flutter_projects/utils/routes.dart";
import "package:flutter_projects/widgets/Drawer.dart";
import "package:flutter_projects/widgets/home_widgets/catalog_header.dart";
import "package:flutter_projects/widgets/home_widgets/catalog_list.dart";
import "package:velocity_x/velocity_x.dart";
import "../core/core.dart";



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

    final _cart = (VxState.store as MyStore).cart;
     return Scaffold(
      backgroundColor:   context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: const {AddMutation,RemoveMutation},
        builder: (context, _, __) =>  FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: const Icon(CupertinoIcons.cart,color: Colors.white,),
        ).badge(color: Colors.red, size: 22,count:_cart.items.length,textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        )),
        
      ),
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
