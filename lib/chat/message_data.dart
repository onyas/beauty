class MessageData {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageTyp messageTyp;
  MessageData(
      this.avatar, this.title, this.subTitle, this.time, this.messageTyp);
}

enum MessageTyp { SYSTEM, PUBLIC, CHAT, GROUP }

List<MessageData> messageData = [
  new MessageData(
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3398360864,2909128126&fm=26&gp=0.jpg",
      "喵喵",
      "吃饭了么",
      DateTime.now(),
      MessageTyp.CHAT),
  new MessageData(
      'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2149989537,3422851914&fm=26&gp=0.jpg',
      "小新",
      "有点色",
      DateTime.now(),
      MessageTyp.GROUP)
];
