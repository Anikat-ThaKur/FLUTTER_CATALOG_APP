import 'package:flutter/material.dart';
import 'package:flutter_projects/models/catalog.dart';
import 'package:flutter_projects/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,),
      backgroundColor: context.canvasColor,
      bottomNavigationBar:  Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl4.red800.make(),
                    ElevatedButton(onPressed: () {}, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                      shape: MaterialStateProperty.all(StadiumBorder()),

                    ),
                    child: "Add to Cart".text.xl.make(),
                    ).wh(130,50)
      
                  ],
      
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
      child: Column(
        children: [
          Hero(
            
             tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image)
            
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
               child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                      catalog.name.text.xl4.color(Theme.of(context).colorScheme.primary).bold.make(),
                      catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                      10.heightBox,
                    "Dolor sea takimata ipsum sea eirmod aliquyam est. Eos ipsum voluptua eirmod elitr, no dolor dolor amet eirmod dolor labore dolores magna. Amet vero vero vero kasd, dolore sea sed sit invidunt nonumy est sit clita. Diam aliquyam amet tempor diam no aliquyam invidunt. Elitr lorem eirmod dolore clita. Rebum."
                      .text.make().p12(),

                  ],

                ).py64(),
                )
               ),

            )
           
        ],
      ),
      ),
    );
  }
}