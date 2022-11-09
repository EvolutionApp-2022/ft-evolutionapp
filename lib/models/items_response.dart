class Item {
  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.state
  });

  int id;
  String name;
  String description;
  bool state;

  static Item objJson(Map<String, dynamic> json) {
    return Item(
        id: json['id'] as int,
        name: json['name'] as String,
        description: json['description'] as String,
        state: json['state'] as bool);
  }
}

class listItems {
  static List<Item> listaItem(List<dynamic> listaJson) {
    List<Item> listadoItem = [];
    if (listaJson != null) {
      for (var item in listaJson) {
        final sample = Item.objJson(item);
        listadoItem.add(sample);
      }
    }
    return listadoItem;
  }
}