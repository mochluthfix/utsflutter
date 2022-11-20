import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

final List alphabet = [
  "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
];

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          children: <Widget>[
            GridView.count(
              crossAxisCount: 3,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(20),
              children: List.generate(alphabet.length, (index) {
                return Container(
                  height: 100,
                  child: Card(
                    child: Center(
                        child: Text(alphabet[index],
                            style: TextStyle(
                                color: Colors.white, fontSize: 20))),
                    color: Colors.deepPurpleAccent,
                  ),
                );
              }),
            ),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
          ),

    );
  }
}
