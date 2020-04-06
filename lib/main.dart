import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: MyHomePage(title: 'MM/dd'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
//    Text(
//      'Index 0: Home',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 1: Business',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 2: School',
//      style: optionStyle,
//    )
    HomePage(),
    HomePage2(),
//    HomePage2(),
//    Text('aaa'),
//    Text('bbb'),
//    Text('ccc'),
  ];

  void _onItemTapped(int index) {
    setState(() {
    _selectedIndex = index;
    });
  }

//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        title: Text(widget.title),
        title: Text(''),
      ),
      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.school),
//            title: Text('School'),
//          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('HOME')
//      ),
//      body: Text('home body'),
//    );
    return Text('home body');
  }
}

class HomePage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState2();
}

class _HomePageState2 extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//          title: Text('HOMEHOME')
//      ),
//      body: Text('home body2'),
//    );
    return Text('home body2');
  }
}