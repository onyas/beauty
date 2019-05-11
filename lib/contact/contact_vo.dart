class ContactVO {
  String sectionKey;
  String name;
  String avatarUrl;
  ContactVO(this.sectionKey, this.name, this.avatarUrl);
}

List<ContactVO> contactData = [
  new ContactVO('Z', "张三",
      "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=832123913,1211662002&fm=26&gp=0.jpg"),
  new ContactVO('L', "李四",
      "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=644481890,528432248&fm=26&gp=0.jpg"),
  new ContactVO('W', "王五",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=357877497,1322840177&fm=26&gp=0.jpg")
];
