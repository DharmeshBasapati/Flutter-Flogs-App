import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 240.0,
              floating: true,
              pinned: true,
              backgroundColor: Theme.of(context).backgroundColor,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("About Us",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Container(
          color: Theme.of(context).backgroundColor,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 38, 8, 8),
              child: Text(
                "An About Us page helps your company make a good first impression, and is critical for building customer trust and loyalty. An About Us page should make sure to cover basic information about the store and its founders, explain the company's purpose and how it differs from the competition, and encourage discussion and interaction. Here are some free templates, samples, and example About Us pages to help your ecommerce store stand out from the crowd. \n\nWhen it comes to personalizing your online store, nothing is more effective than an About Us page. This is a quick summary of your company's history and purpose, and should provide a clear overview of the company's brand story. A great About Us page can help tell your brand story, establish customer loyalty, and turn your bland ecommerce store into an well-loved brand icon. Most importantly, it will give your customers a reason to shop from your brand.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Theme.of(context).textTheme.headline6.color),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
