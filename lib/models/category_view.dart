class CategoryView {
  String name;
  String icon;
  String url;

  CategoryView(this.name, this.icon, this.url);

  CategoryView.fromJson(Map data) {
    this.name = data["name"];
    this.icon = data["icon"];
    this.url = data["url"];
  }
}
