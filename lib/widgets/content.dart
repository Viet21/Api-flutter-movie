import 'dart:js';

import 'package:flutter/material.dart';
import 'package:movie_app_flutter/description.dart';
import 'package:movie_app_flutter/utils/text.dart';

class ContentApp extends StatelessWidget {
  final List trending;
  const ContentApp({Key key, this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          _textfield(),
          SizedBox(
            height: 20,
          ),
          _textcontent(),
          SizedBox(
            height: 20,
          ),
          _Rowcontent(),
          SizedBox(
            height: 20,
          ),
          _textcontent1(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Container _textfield() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: Color(0xFFFF7F7F7F)),
        color: Color(0xff04082e),
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        style: TextStyle(fontSize: 20.0, color: Color(0xffa8adaa)),
        decoration: InputDecoration(
          hintText: 'Search your movie',
          hintStyle: TextStyle(
            color: Color(0xffa8adaa),
            fontSize: 20.0,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xffa8adaa),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Container _textcontent() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Categories',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          RichText(
              text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'see more',
                style: TextStyle(fontSize: 20, color: Color(0xffa8adaa)),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Row _Rowcontent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          decoration: BoxDecoration(
              color: Color(0xff3d3d4f),
              borderRadius: BorderRadius.circular(20.5)),
          child: Container(
            child: Column(children: [
              Image(image: AssetImage('lib/asset/icon_1.jpg')),
              SizedBox(height: 10),
              Text(
                'love',
                style: TextStyle(color: Colors.white),
              ),
            ]),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          decoration: BoxDecoration(
              color: Color(0xff3d3d4f),
              borderRadius: BorderRadius.circular(20.5)),
          child: Container(
            child: Column(children: [
              Image(image: AssetImage('lib/asset/icon_1.jpg')),
              SizedBox(height: 10),
              Text(
                'love',
                style: TextStyle(color: Colors.white),
              ),
            ]),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          decoration: BoxDecoration(
              color: Color(0xff3d3d4f),
              borderRadius: BorderRadius.circular(20.5)),
          child: Container(
            child: Column(children: [
              Image(image: AssetImage('lib/asset/icon_1.jpg')),
              SizedBox(height: 10),
              Text(
                'love',
                style: TextStyle(color: Colors.white),
              ),
            ]),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          decoration: BoxDecoration(
              color: Color(0xff3d3d4f),
              borderRadius: BorderRadius.circular(20.5)),
          child: Container(
            child: Column(children: [
              Image(image: AssetImage('lib/asset/icon_1.jpg')),
              SizedBox(height: 10),
              Text(
                'love',
                style: TextStyle(color: Colors.white),
              ),
            ]),
          ),
        ),
      ],
    );
  }

  Container _textcontent1() {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Popular',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          RichText(
              text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'see more',
                style: TextStyle(fontSize: 20, color: Color(0xffa8adaa)),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
