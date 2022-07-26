import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget {
  const HeaderApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _textheader(),
        SizedBox(
          width: 80,
        ),
        _avatar(),
      ]),
    );
  }

  Container _textheader() {
    return Container(
      child: Text(
        'Hi, Edwards!',
        textAlign: TextAlign.left,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
      ),
    );
  }
}

CircleAvatar _avatar() {
  return CircleAvatar(
    radius: 30,
    backgroundColor: Colors.green,
    backgroundImage: AssetImage(
      'lib/asset/anhdep.jpg',
    ),
  );
}
