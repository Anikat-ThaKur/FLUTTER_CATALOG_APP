
import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/home_detail_page.dart';
import 'package:flutter_projects/widgets/home_widgets/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';
import '../../widgets/themes.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context,index){
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(context,
           MaterialPageRoute(
            builder: (context) => HomeDetailPage(
              catalog: catalog
              )
            )
           ),
          child: CatalogItem(catalog: catalog)
          
          );
      }
      );

  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});


  @override
  Widget build(BuildContext context) {
    return VxBox(
      child:Row(
        children: [
          Hero
          (
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(Theme.of(context).colorScheme.primary).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(onPressed: () {}, 
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                    shape: MaterialStateProperty.all(StadiumBorder()),
                  ),
                  child: "Add to Cart".text.make(),
                  )

                ],
              ).pOnly(right: 8),
            ],

          ))
        ],),
    ).color(context.cardColor).rounded.square(150).make().py16();

    
  }
}