

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Flutter layout demo')),
        ),
        body: ListView(children: [
            Column(
            children: [
              (Image.network(
                'https://cdn.vox-cdn.com/thumbor/dnmjXFHIUQlCrM68ZCuFKVaqauo=/0x105:2000x1230/1600x900/cdn.vox-cdn.com/uploads/chorus_image/image/51046461/160902_12-55-55_5DSR4035.0.0.jpg',
                scale: 3,
              )),
              const Padding(
                padding: EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Text(
                              'One World Trade Center',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'New York City, USA',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.star,
                      size: 28,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '53',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.phone),
                          iconSize: 25,
                          color: Colors.deepPurple,
                        ),
                        const Text('CALL')
                      ],
                    ),
                    
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.near_me),
                          iconSize: 25,
                          color: Colors.deepPurple,
                        ),
                        const Text('ROUTE')
                      ],
                    ),
                    
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.share),
                          iconSize: 25,
                          color: Colors.deepPurple,
                        ),
                        const Text('SHARE')
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(32.0),
                child: (Text(
                  """One World Trade Center, also known as One WTC and Freedom Tower, is the main building of the rebuilt World Trade Center complex in Lower Manhattan, New York City. One World Trade Center is the tallest building in the United States. The supertall structure has the same name as the North Tower of the original World Trade Center, which was destroyed in the terrorist attacks of September 11, 2001.""",
                  style: TextStyle(fontSize: 16),
                )),
              )
            ],
          ),
        ],)
        
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
