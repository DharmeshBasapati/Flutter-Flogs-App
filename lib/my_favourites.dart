import 'package:flutter/material.dart';
import 'package:flutter_parallax/flutter_parallax.dart';
import 'package:rounded_floating_app_bar/rounded_floating_app_bar.dart';

class MyFavourites extends StatefulWidget {
  @override
  _MyFavouritesState createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isInnerBoxScroll) {
          return [
            RoundedFloatingAppBar(
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              textTheme: TextTheme(
                headline6: TextStyle(
                  color: Colors.white,
                ),
              ),
              floating: true,
              snap: true,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    child: Image.asset(
                      'assets/icons/icon_back_arrow.png',
                      color: Colors.white,
                      height: 25,
                      width: 25,
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "My Favorites",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
              backgroundColor: Colors.green,
            ),
          ];
        },
        body: ListView.builder(
          itemBuilder: buildItem,
          itemCount: 20,
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, int index) {
    var mode = index % 4;
    switch (mode) {
      case 0:
        return new Parallax.inside(
          child: new Image.network(
              'https://flutter.io/images/homepage/header-illustration.png'),
          mainAxisExtent: 200.0,
        );
      case 1:
        return new Parallax.inside(
          child: new Image.network(
              'http://t.wallpaperweb.org/wallpaper/nature/3840x1024/9XMedia1280TripleHorizontalMountainsclouds.jpg'),
          mainAxisExtent: 200.0,
          direction: AxisDirection.right,
        );
      case 2:
        return new Parallax.inside(
          child: new Image.network(
              'https://flutter.io/images/homepage/header-illustration.png'),
          mainAxisExtent: 200.0,
          flipDirection: true,
        );
      default:
        return new Parallax.inside(
          child: new Image.network(
              'http://t.wallpaperweb.org/wallpaper/nature/3840x1024/9XMedia1280TripleHorizontalMountainsclouds.jpg'),
          mainAxisExtent: 200.0,
          direction: AxisDirection.left,
        );
    }
  }
}
