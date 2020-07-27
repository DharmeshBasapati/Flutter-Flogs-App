import 'package:flutter/material.dart';
import 'package:flutter_flogs_app/blog_detail.dart';

import 'blog_pojo.dart';

class MyBlogsList extends StatefulWidget {
  @override
  _MyBlogsListState createState() => _MyBlogsListState();
}

class _MyBlogsListState extends State<MyBlogsList> {
  List<BlogPojo> blogData = [
    BlogPojo(
        1,
        "The Fault in Our Stars",
        "The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam. The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam. The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam.",
        "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
    BlogPojo(
        2,
        "The Fault in Our Stars",
        "The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam. The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam.",
        "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
    BlogPojo(
        3,
        "The Fault in Our Stars",
        "The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam. The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam.",
        "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
    BlogPojo(
        4,
        "The Fault in Our Stars",
        "The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam.",
        "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
    BlogPojo(
        5,
        "The Fault in Our Stars",
        "The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam.",
        "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
    BlogPojo(
        6,
        "The Fault in Our Stars",
        "The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam.",
        "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
    BlogPojo(
        7,
        "Blog Title #7",
        "The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam.",
        "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
    BlogPojo(
        8,
        "Blog Title #8",
        "The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam.",
        "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
    BlogPojo(
        9,
        "Blog Title #9",
        "The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam.",
        "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
    BlogPojo(
        10,
        "Blog Title #10",
        "The Fault in Our Stars is a 2014 American romantic drama film directed by Josh Boone, based on the 2012 novel of the same name by John Green. The film stars Shailene Woodley and Ansel Elgort; with Laura Dern, Sam Trammell, Nat Wolff, and Willem Dafoe playing supporting roles. Woodley plays Hazel Grace Lancaster, a sixteen-year-old cancer patient who is forced by her parents to attend a support group, where she meets and subsequently falls in love with Augustus Waters, another cancer patient, played by Elgort. Development of The Fault in Our Stars began in January 2012 when Fox 2000, a division of 20th Century Fox, optioned the rights to adapt the novel into a feature film. Principal photography began on August 26, 2013, in Pittsburgh, Pennsylvania, with a few additional days in Amsterdam, The Netherlands, before concluding on October 16, 2013. Pittsburgh doubled for all of the scenes set in Indianapolis, Indiana, the novels setting, as well as for some interior scenes set in Amsterdam.",
        "https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
  ];

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: blogData.length,
          itemBuilder: (context, index) {
            return Hero(
              transitionOnUserGestures: true,
              tag: blogData[index].id,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return BlogDetail(blogData: blogData[index]);
                    }));
                  },
                  child: Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    margin: new EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                              bottom: Radius.circular(15)),
                          child: Image.network(blogData[index].blogImage,
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          bottom: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15),
                                bottom: Radius.circular(15)),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                    Colors.black.withOpacity(0.2),
                                    Colors.black.withOpacity(0.7)
                                  ])),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 5,
                          bottom: 5,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 5, 5),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  child: CircleAvatar(
                                      radius: 26,
                                      backgroundColor: Colors.white),
                                ),
                                Container(
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(
                                      'https://miro.medium.com/fit/c/256/256/1*WKZSnpp8B5__zWcsOTaJ0A.jpeg',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 5, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    blogData[index].blogTitle,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'By Dharmesh Basapati',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
