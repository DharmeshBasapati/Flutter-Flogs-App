import 'package:flutter/material.dart';
import 'package:flutter_flogs_app/blog_pojo.dart';

class BlogDetail extends StatelessWidget {
  final BlogPojo blogData;

  const BlogDetail({Key key, @required this.blogData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //For Blog Image & Black Empty Container In Half-half Screen
          Column(
            children: <Widget>[
              Hero(
                tag: blogData.id,
                child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Image.network(
                      blogData.blogImage,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    )),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).backgroundColor,
                ),
              )
            ],
          ),
          //For Placing Blog Author circle avatar image and blog content in center of the screen
          Card(
            color: Theme.of(context).cardColor,
            margin: EdgeInsets.only(top: 200, left: 20, right: 20, bottom: 20),
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                blogData.blogTitle,
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).backgroundColor),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'By Dharmesh Basapati',
                                style: TextStyle(
                                    color: Theme.of(context).backgroundColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        )),
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              child: CircleAvatar(
                                  radius: 37,
                                  backgroundColor:
                                      Theme.of(context).backgroundColor),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                  'https://miro.medium.com/fit/c/256/256/1*WKZSnpp8B5__zWcsOTaJ0A.jpeg',
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Text(
                        blogData.blogContent,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Theme.of(context).backgroundColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.only(top: 35, left: 25),
              child: CircleAvatar(
                radius: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/icons/icon_back_arrow.png',
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.black87,
              ),
            ),
          )
        ],
      ),
    );
  }
}
