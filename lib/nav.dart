import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toters_app/ui/homePge.dart';
import 'package:toters_app/ui/orderPage.dart';
import 'package:toters_app/ui/profile.dart';
import 'package:toters_app/ui/search.dart';
class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  static List _wigetOption = [
    HomePage(),
    Search(),
    OrderPage(),
    Profile(),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body: Center(
         child: _wigetOption.elementAt(_selectedIndex),
       ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.green,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black12,


              tabs: [

                GButton(

                  icon: Icons.home,
                  text: 'رئيسية',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'بحث',
                ),
                GButton(
                  icon: Icons.list_alt_sharp,
                  text: 'طلبات',
                ),
                GButton(
                  icon: Icons.person_outline_rounded,
                  text: 'حساب',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }


}
