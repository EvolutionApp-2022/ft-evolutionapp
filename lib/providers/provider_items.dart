import 'package:ft_evolution_app/models/items_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ItemsProvider {
  static Future<List<Item>> getAllItems(int courseId) async {
    final response = await http.get(
        Uri.parse("http://10.0.2.2:8080/api/v1/courses/${courseId}/items"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allItems = listItems.listaItem(responseJSON);
      return allItems;
    }
    return <Item>[];
  }
}
