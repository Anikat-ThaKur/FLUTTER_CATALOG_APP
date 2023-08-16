import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../core/core.dart';
import '../models/cart.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),

    );
    
  }
}

class _CartTotal extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
     final CartModel _cart =(VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children: [
        VxBuilder(
           mutations: {RemoveMutation},
           builder: ((context, _, __) {
            return "\$${_cart.totalPrice}".
           text
           .xl5
           .color(Theme.of(context).colorScheme.primary)
           .make();
             
           }),
    
           ),
        30.widthBox,
        ElevatedButton(
        onPressed:()
        {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: "Buying not supported yet".text.color(Theme.of(context).colorScheme.primary).center.make(),
            
          ));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
        ),
         child: "Buy".text.white.make(),

         ).w32(context)

      ]),
    );
  }
}



class _CartList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
     final CartModel _cart =(VxState.store as MyStore).cart;
    return _cart.items!.isEmpty
    ? "Nothing in the Cart Yet".text.xl3.makeCentered()
    : ListView.builder(
      itemCount:  _cart.items?.length,
      itemBuilder: (context,index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          onPressed: () => RemoveMutation(_cart.items[index]),
           
          icon: Icon(Icons.remove_circle_outline)),
          title: _cart.items[index].name.text.make(),
      )
    );
  }
}