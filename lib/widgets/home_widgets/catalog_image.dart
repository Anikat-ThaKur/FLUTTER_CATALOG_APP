
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return  Image.network(
            image,
            //p8 is padding of image to the creambackground in which its inside
          ).box.rounded.p8.color(context.canvasColor).make().p16().w40(context);
           //p16 is padding of the creamcolour in the row
  }
}