import 'package:beauty/models/category_view.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;

class RequestClient {
  static const String baseUrl = "http://www.meizitu.com/a/list_1_1.html";

  List<CategoryView> getCategories()  {
    List<CategoryView> categories = [];
    http.get(baseUrl).then((http.Response response) {
      print(response.body.toString());
      var document = parse(response.body.toString());
      dom.Element spanElement = document.getElementsByClassName('tags')[1];
      spanElement.children.forEach((item) {
        String categoryName = item.text.toString();
        String url = item.attributes['href'];
        CategoryView movieNews = new CategoryView(categoryName, url, url);
        print(movieNews);
        categories.add(movieNews);
      });
    });
    return categories;
  }
}

void main() {
  new RequestClient().getCategories();
}
