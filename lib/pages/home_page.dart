import 'package:flutter/material.dart';
import 'package:surja_ecommerce/components/bottom_nav_bar.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//this selected index is to control the bottom nav bar
int _selectedIndex=0;

//this method will update our selected index
//when the user taps on the bottom bar
void navigateBottomBar(int index)
{
  setState((){
    _selectedIndex =index;

  });
}

//pages to display
final List<Widget> _pages =[

  //shop page
  const ShopPage(),

  //cart page
  const CartPage(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) =>navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:0,
        leading: Builder(builder:(context) => IconButton(icon: const 
        Icon(
          Icons.menu, 
        color: Colors.black,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        ),
      ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              
              children:[
            DrawerHeader(child: Image.asset('lib/images/nike.png', color: Colors.white,fit: BoxFit.contain,
             ),
             ),
             
                Padding(
               padding: const EdgeInsets.symmetric(horizontal:25.0),
               
             ),

             Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: ListTile(leading: Icon(Icons.home),
               title: Text('Home'),
               ),
             ),
Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: ListTile(leading: Icon(Icons.info),
               title: Text('About'),
               ),
             ),
              ],

             ),
             
             
             

//logout
             Padding(
               padding: const EdgeInsets.only(left: 25.0, bottom:25),
               child: ListTile(leading: Icon(Icons.logout),
               title: Text('Logout'),
               ),
             ),

          ],
        )
      ),
      body:_pages[_selectedIndex],

    );
  }
}