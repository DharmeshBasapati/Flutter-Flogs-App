import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categoryName = [
    'Education',
    'Travel',
    'Comedy',
    'Technology',
    'Science',
    'Sports',
    'Politics',
    'Life',
    'Nature',
    'Internet'
  ];
  List<String> icons = [
    'assets/icons/icon_for_travel.png',
    'assets/icons/icon_for_travel.png',
    'assets/icons/icon_for_travel.png',
    'assets/icons/icon_for_tech.png',
    'assets/icons/icon_for_travel.png',
    'assets/icons/icon_for_travel.png',
    'assets/icons/icon_for_travel.png',
    'assets/icons/icon_for_travel.png',
    'assets/icons/icon_for_travel.png',
    'assets/icons/icon_for_travel.png',
  ];

  final kDefaultShadow = BoxShadow(
    offset: Offset(0, 15),
    blurRadius: 27,
    color: Colors.black12, // Black color with 12% opacity
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 5.0),
            itemBuilder: (context, index) {
              return GridTile(
                  child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                        boxShadow: [kDefaultShadow],
                      ),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 30,
                    child: Container(
                      padding: EdgeInsets.all(25),
                      height: 145,
                      // image is square but we add extra 20 + 20 padding thats why width is 200
                      width: 145,
                      child: Image.asset(
                        icons[index],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 140,
                      alignment: Alignment.center,
                      child: Text(
                        categoryName[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).textTheme.headline1.color,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  )
                ],
              ));
            },
            itemCount: categoryName.length,
          ),
        ),
      ),
    );
  }
}
