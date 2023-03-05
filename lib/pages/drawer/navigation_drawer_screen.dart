
import 'package:books/pages/login_page.dart';
import 'package:books/pages/my_books_page.dart';
import 'package:books/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'drawer_item.dart';
class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

  String url = "";
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              DrawerItem(
                  name: 'My Account',
                  icon: Icons.account_box_rounded,
                  onPressed: (){
                    Navigator.of(context).push( MaterialPageRoute( builder:(context) => const UserPage()));
                  }
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'Books',
                  icon: Icons.favorite_outline,
                  onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyBooksPage()))
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: () {
                    Navigator.of(context).push( MaterialPageRoute( builder:(context) => const LoginPage()));
                  }
              ),

            ],
          ),
        ),
      ),
    );
  }

}



