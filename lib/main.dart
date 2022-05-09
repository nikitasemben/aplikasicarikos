import 'package:flutter/material.dart';
import 'package:kossearch/pages/splash_page.dart';
import 'package:kossearch/providers/space_provider.dart';
import 'package:provider/provider.dart';




void main() async {

  runApp(MyApp());
  //runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
      ),

    );
  }
}

// class NavigatorItem extends StatefulWidget {
//   @override
//   _NavigatorItemState createState() => _NavigatorItemState();
// }
//
// class _NavigatorItemState extends State<NavigatorItem> {
//   int _bottomNavCurrentIndex = 0;
//   final List _container = [HomePage(), FavoriteItem(), ItemItem(), SearchItem(), MailItem()];
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: _container[_bottomNavCurrentIndex],
//
//         bottomNavigationBar: BottomNavigationBar(
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           type: BottomNavigationBarType.fixed,
//           onTap: (index) {
//             setState(() {
//               _bottomNavCurrentIndex = index;
//             });
//           },
//           currentIndex: _bottomNavCurrentIndex,
//           items: [
//             BottomNavigationBarItem(
//               activeIcon: Icon(
//                 Icons.home,
//                 color: Colors.purple,
//               ),
//               icon: Icon(
//                   Icons.home,
//
//                   color: _bottomNavCurrentIndex == 0
//                       ? Colors.purple
//                       : Colors.grey),
//               label: ' Home',
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(
//                 Icons.mail,
//                 color: Colors.purple,
//               ),
//               icon: Icon(
//                   Icons.mail,
//                   color: _bottomNavCurrentIndex == 1
//                       ? Colors.purple
//                       : Colors.grey),
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(
//                 Icons.search,
//                 color: Colors.purple,
//               ),
//               icon: Icon(
//                   Icons.search,
//
//                   color: _bottomNavCurrentIndex == 2
//                       ? Colors.purple
//                       : Colors.grey),
//
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(
//                 Icons.sticky_note_2_rounded,
//                 color: Colors.purple,
//               ),
//               icon: Icon(
//                   Icons.sticky_note_2_rounded,
//
//                   color: _bottomNavCurrentIndex == 3
//                       ? Colors.purple
//                       : Colors.grey),
//
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Icon(
//                 Icons.favorite,
//                 color: Colors.purple,
//               ),
//               icon: Icon(
//                   Icons.favorite,
//
//                   color: _bottomNavCurrentIndex == 4
//                       ? Colors.purple
//                       : Colors.grey),
//
//             ),
//
//           ],
//         ));
//   }
// }
//
//
