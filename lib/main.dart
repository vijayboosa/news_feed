import 'package:flutter/material.dart';
import 'package:news_feed/screens/categorie_page_view/categorie_card.dart';
import 'package:news_feed/screens/home_page_view/home_page_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _controller = PageController();

  // Map<String,bool> activeIcons = {'home': true, 'categories': false, 'bookmarks': false};

  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(
            backgroundColor: _currentTab == 0 ? Colors.green : Colors.grey,
            icon: IconButton(
                icon: Icon(Icons.backspace_outlined,color: _currentTab == 0 ? Colors.green : Colors.grey,), onPressed: () {
                  _currentTab = 0;
                  _controller.jumpToPage(0);
                  setState(() {

                  });
            }),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: _currentTab == 1 ? Colors.green : Colors.grey,
            icon: IconButton(icon: Icon(Icons.menu,color: _currentTab == 1 ? Colors.green : Colors.grey,), onPressed: () {
              _currentTab = 1;
              _controller.jumpToPage(1);
              setState(() {});
            }),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(Icons.bookmark_border,color: _currentTab == 2 ? Colors.green : Colors.grey,), onPressed: () {
                _currentTab = 2;
                _controller.jumpToPage(2);
                setState(() {});
              }),
              label: ''),
        ],
      ),
      body: SafeArea(
        child: PageView(
          controller: _controller,
          children: [
            HomePageScreen(),
            CategorieCard(),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
