class CatalogModel{
  static final items=[
     Item(
    id : 1,
    name: "IPhone 12 Pro",
    desc: "Apple IPhone 12Th Generation",
    price: 699,
    color: "#33505a",
    image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_FA1aq4GUFO72EtCv9zqK-xZsw7OW2V3Oj8fZtPqPtwImoNlrgIuLUyBvj3i4Av8wOmQ&usqp=CAU",
  )

  ];
}
class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  
  Item({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});
}

