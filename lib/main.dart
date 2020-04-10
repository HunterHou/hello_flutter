import 'package:flutter/material.dart';
import 'model/Post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.9),
          splashColor: Colors.black87,
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: "menu",
                onPressed: () {
                  debugPrint("menu is press");
                }),
            title: Text("欢迎来到我的APP"),
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: "search",
                  onPressed: () {
                    debugPrint("search is press");
                  })
            ],
            bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.redAccent,
                indicatorWeight: 2,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.airplay)),
                  Tab(icon: Icon(Icons.ac_unit)),
                  Tab(icon: Icon(Icons.adjust)),
                ]),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.business), title: Text('浏览')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_membership), title: Text('我')),
            ],
          ),
          body: TabBarView(children: [
            HelloList(),
            Icon(
              Icons.ac_unit,
              color: Colors.black12,
              size: 128,
            ),
            Icon(
              Icons.card_membership,
              color: Colors.black12,
              size: 128,
            )
          ]),
          drawer: Drawer(
            child:Column(
              children:[
                Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "http://pic1.win4000.com/wallpaper/2020-04-01/5e843b7814f49.jpg",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "Wendux",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
              ]
            )
          ),
          endDrawer: Text("right drawer"),
        ));
  }
}

class HelloList extends ListView {
  Widget _listItem(BuildContext context, int index) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Image.network(posts[index].imgUrl),
            SizedBox(height: 24),
            Text(posts[index].title, style: Theme.of(context).textTheme.title),
            Text(posts[index].author,
                style: Theme.of(context).textTheme.subtitle),
            SizedBox(height: 24),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: posts.length, itemBuilder: _listItem);
  }
}
