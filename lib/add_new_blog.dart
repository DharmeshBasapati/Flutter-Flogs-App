import 'package:flutter/material.dart';
import 'package:flutter_flogs_app/custom_container.dart';

class AddNewBlog extends StatefulWidget {
  @override
  _AddNewBlogState createState() => _AddNewBlogState();
}

class _AddNewBlogState extends State<AddNewBlog> {
  PageController _controller =
      PageController(initialPage: 2, viewportFraction: 1, keepPage: true);

  var initialPageNumber;

  @override
  void initState() {
    super.initState();
    setState(() {
      initialPageNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Blog'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Center(
        child: Container(
          child: PageView.builder(
            controller: _controller,
            itemCount: 10,
            physics: BouncingScrollPhysics(),
            onPageChanged: (value) {
              print("Current Page - $value");
            },
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    _controller.animateToPage(index + 1,
                        curve: Curves.decelerate,
                        duration: Duration(milliseconds: 500));
                  },
                  onDoubleTap: () {
                    _controller.animateToPage(index - 1,
                        curve: Curves.decelerate,
                        duration: Duration(milliseconds: 500));
                  },
                  child: CustomContainer(title: 'PAGE $index'));
            },
          ),
        ),
      ),
    );
  }
}
