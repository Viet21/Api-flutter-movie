import 'package:flutter/material.dart';
import 'package:movie_app_flutter/widgets/content.dart';
import 'package:movie_app_flutter/widgets/header.dart';
import 'package:movie_app_flutter/widgets/movie_normal.dart';
import 'package:movie_app_flutter/widgets/trending.dart';
import 'package:tmdb_api/tmdb_api.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {}
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String apikey = 'd954e5afba2e558e5233f2a249678746';
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkOTU0ZTVhZmJhMmU1NThlNTIzM2YyYTI0OTY3ODc0NiIsInN1YiI6IjYyYjNmNGMyNTk1YTU2MDA1M2YzYjU5NSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.TMTY4Vbz2_sTrZxb5-GCNi7RVKHDop35q3x1oDdInc0';
  List trendingmovies = [];
  final controller = ScrollController();
  var page = 1;
  List panigation = [];
  @override
  void initState() {
    super.initState();
    loadmovies();
    fetch();
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        fetch();
      }
    });
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();

    setState(() {
      trendingmovies = trendingresult['results'];
    });
  }

  Future fetch() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult =
        await tmdbWithCustomLogs.v3.trending.getTrending(page: page++);

    setState(() {
      panigation.addAll(trendingresult['results'] as List);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xff04082e),
        body: ListView(
          controller: controller,
          children: [
            HeaderApp(),
            ContentApp(),
            TrendingMovies(
              trending: trendingmovies,
            ),
            for (int i = 0; i < panigation.length - 1; i++)
              MovieNormal(
                value: panigation[i],
              )
          ],
        ),
      ),
    );
  }
}
