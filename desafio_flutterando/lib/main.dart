import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red[300],
          ),
          Container(
            child: Opacity(
              opacity: 0,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 160,
                  height: 160,
                  child: Image.network(
                    'https://cdn.iconscout.com/icon/free/png-256/tinder-20-761718.png',
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 40,
                ),
                Text(
                  'Location Changer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                Container(
                  height: 10,
                ),
                Text(
                  'Flutter app for Tinder',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Container(
                  height: 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 200,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.white,
                      child: Text(
                        'Login with Facebook',
                        style: TextStyle(
                          color: Colors.red[400],
                          fontSize: 16,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
