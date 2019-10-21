import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Mon site web'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;

  var image = new Container(
    width: 150.0,
    height: 110.0,
    decoration: new BoxDecoration(
      borderRadius: new BorderRadius.circular(3.0),
      color: const Color(0xff7c94b6),
      image: new DecorationImage(
        image: new NetworkImage(
            "http://www.zib-militaria.de/WebRoot/Store8/Shops/61431412/5824/C07A/36E1/F3BE/D931/C0A8/2BBC/619A/Kalaschnikov_Luftgewehr.jpg"),
        fit: BoxFit.fill,
      ),
    ),
  );

  var commentaire = Text(
  'You have pushed the button this many times:',
  style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
  ),
  );


  void _incrementCounter() {
    setState(() {

      _counter=_counter-1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(

          children: <Widget>[
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: (){

                  },
                  child: Text("Page 1"),

                ),
                FlatButton(
                  onPressed: (){},
                  child:Text("Page 2"),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                image,
                commentaire,
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.display1,
                ),
                image,
                image,
              ],
            ),
            Spacer(),

          ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.flight),
      ),
    );
  }
}
