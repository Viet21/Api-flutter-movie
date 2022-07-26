import 'package:flutter/material.dart';
import 'package:movie_app_flutter/utils/text.dart';

import '../description.dart';

class MovieNormal extends StatelessWidget {
  const MovieNormal({Key key, this.value}) : super(key: key);

  final Map value;

  Widget _pagination({BuildContext context, value}) => InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Description(
                        name: value['title'],
                        bannerurl: 'https://image.tmdb.org/t/p/w500' +
                            value['backdrop_path'],
                        posterurl: 'https://image.tmdb.org/t/p/w500' +
                            value['poster_path'],
                        description: value['overview'],
                        vote: value['vote_average'].toString(),
                        launch_on: value['release_date'],
                      )));
        },
        child: Container(
          width: 140,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://image.tmdb.org/t/p/w500' +
                        value['poster_path']),
                  ),
                ),
                height: 200,
              ),
              SizedBox(height: 5),
              Container(
                child: modified_text(
                    size: 15,
                    text: value['title'] != null ? value['title'] : 'Loading'),
              )
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) =>
      _pagination(context: context, value: value);
}
