import 'package:flutter/material.dart';

class AddNewBlog extends StatefulWidget {
  @override
  _AddNewBlogState createState() => _AddNewBlogState();
}

class _AddNewBlogState extends State<AddNewBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Blog'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Center(
        child: Container(
          child: Text('ADD NEW BLOG'),
        ),
      ),
    );
  }
}
