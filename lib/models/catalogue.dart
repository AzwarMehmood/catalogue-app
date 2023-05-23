class CatalogueModel {
  static final items = [
    Item(
        id: 2345,
        name: "Samsung S20",
        desc: "The High end Smartphone",
        price: 500,
        color: "#008434",
        image:
            "https://images.samsung.com/is/image/samsung/assets/in/smartphones/galaxy-s20/buy/S20-FE_Lavender_SKUimage_MO_img.jpg")
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
