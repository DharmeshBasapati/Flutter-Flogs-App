import 'package:flutter/material.dart';
import 'package:flutter_flogs_app/categories.dart';
import 'package:flutter_flogs_app/my_blogs_list.dart';
import 'package:flutter_flogs_app/my_profile.dart';
import 'package:flutter_flogs_app/theme_settings.dart';
import 'package:provider/provider.dart';
import 'settings.dart';
import 'about_us.dart';
import 'add_new_blog.dart';
import 'my_favourites.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

void changeTheme(bool set, BuildContext context) {
  ///Call setDarkMode method inside our Settings ChangeNotifier class to
  ///Notify all the listeners of the change.
  Provider.of<ThemeSettings>(context, listen: false).setDarkMode(set);
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [MyBlogsList(), Categories(), MyProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          'Flutter Flogs',
          style: GoogleFonts.quicksand(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Provider.of<ThemeSettings>(context).isDarkMode
                ? Icons.brightness_high
                : Icons.brightness_low),
            onPressed: () {
              changeTheme(
                  Provider.of<ThemeSettings>(context, listen: false).isDarkMode
                      ? false
                      : true,
                  context);
            },
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        backgroundColor: Theme.of(context).bottomAppBarColor,
        elevation: 10,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.note),
            title: Text('Blogs'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('My Profile'))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Stack(
                children: <Widget>[
                  Image.network(
                      'https://images.unsplash.com/photo-1542435503-956c469947f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',
                      width: double.infinity,
                      fit: BoxFit.cover),
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Text(
                        'Flutter Flogs',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, size: 30, color: Colors.green),
              title: Text(
                'My Home',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_right,
                color: Theme.of(context).accentColor,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.note_add,
                size: 30,
                color: Colors.green,
              ),
              title: Text(
                'Add New Blog',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_right,
                color: Theme.of(context).accentColor,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AddNewBlog();
                }));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.favorite,
                size: 30,
                color: Colors.green,
              ),
              title: Text(
                'My Favourites',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_right,
                color: Theme.of(context).accentColor,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MyFavourites();
                }));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 30,
                color: Colors.green,
              ),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_right,
                color: Theme.of(context).accentColor,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Settings(
                    title: 'Settings',
                  );
                }));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.info,
                size: 30,
                color: Colors.green,
              ),
              title: Text(
                'About Us',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_right,
                color: Theme.of(context).accentColor,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AboutUs();
                }));
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
