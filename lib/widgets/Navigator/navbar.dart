// import 'package:flutter/material.dart';
// import 'package:kossearch/pages/home.dart';
// import 'package:kossearch/widgets/Navigator/favorite.dart';
//
// import 'package:kossearch/widgets/Navigator/mail.dart';
// import 'package:kossearch/widgets/Navigator/profile.dart';
// import '../search/kos_search.dart';
//
//
// class Navbar extends StatefulWidget {
//   static String id = 'TipsItem';
//
//   @override
//   State<Navbar> createState() => _NavbarState();
// }
//
// class _NavbarState extends State<Navbar> {
//   List pages = [
//     HomePage(),
//     MailItem(),
//     ProfileItem(),
//     ItemKos(),
//     FavoriteItem(),
//   ];
//
//   int currentIndex = 0;
//
//   void onTap(int index){
//     setState((){
//       currentIndex = index;
//
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: onTap ,
//         currentIndex: currentIndex,
//         selectedItemColor: Colors.purple,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: false,
//         showSelectedLabels: false,
//         elevation: 0,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home,),
//               label: ("Home"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.mail,),
//             label: ("Mail"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_rounded,),
//             label: ("Profile"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search,),
//             label: ("Search"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite,),
//             label: ("Favorite"),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kossearch/pages/home.dart';
import 'package:kossearch/widgets/Navigator/favorite.dart';

import 'package:kossearch/widgets/Navigator/mail.dart';
import 'package:kossearch/widgets/Navigator/profile.dart';
import '../search/kos_search.dart';


class Navbar extends StatefulWidget {
  static String id = 'TipsItem';

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  List pages = [
    HomePage(),
    MailItem(),
    ProfileItem(),
    ItemKos(),
    FavoriteItem(),
  ];

  int currentIndex = 0;

  void onTap(int index){
    setState((){
      currentIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Colors.purple,
          selectedItemIconColor: Colors.white,
          unselectedItemIconColor: Colors.grey,
          showSelectedItemShadow: false,
          //showSelectedItemShadow: false,

        ),
        selectedIndex: currentIndex,
        onSelectTab: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: ("Home"),
          ),
          FFNavigationBarItem(
            iconData: Icons.mail,
            label: ("Mail"),
          ),
          FFNavigationBarItem(
            iconData: Icons.person_rounded,
            label: ("Profile"),
          ),
          FFNavigationBarItem(
            iconData: Icons.search,
            label: ("Search"),
          ),
          FFNavigationBarItem(
            iconData: Icons.favorite,
            label: ("Favorite"),
          ),
        ],
      ),
    );
  }
}

