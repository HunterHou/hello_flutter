class Post {
  Post({this.title, this.author, this.imgUrl});

  final String title;
  final String author;
  final String imgUrl;
}

final List<Post> posts = [
  Post(
      title: "斗破苍穹",
      author: "天蚕土豆",
      imgUrl: "http://pic1.win4000.com/wallpaper/2020-04-01/5e843b7814f49.jpg"),
  Post(
      title: "斗罗大陆",
      author: "唐家三少",
      imgUrl: "http://pic1.win4000.com/wallpaper/2020-04-01/5e843b3cabe32.jpg"),
  Post(
      title: "雪中悍刀行",
      author: "天下霸唱",
      imgUrl: "http://pic1.win4000.com/wallpaper/2020-04-01/5e843aee7179a.jpg"),
  Post(
      title: "唐砖",
      author: "介于",
      imgUrl: "http://pic1.win4000.com/wallpaper/2020-04-01/5e8420fdb2565.jpg"),
  Post(
      title: "大宋的智慧",
      author: "介于",
      imgUrl: "http://pic1.win4000.com/wallpaper/2020-04-01/5e8420fe9aa03.jpg"),
  Post(
      title: "三国演义",
      author: "罗贯中",
      imgUrl: "http://pic1.win4000.com/wallpaper/2020-04-01/5e8420ff93226.jpg"),
  Post(
      title: "西游记",
      author: "施耐庵",
      imgUrl: "http://pic1.win4000.com/wallpaper/2020-04-01/5e8421009c029.jpg")
];
