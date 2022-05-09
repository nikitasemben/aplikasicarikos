// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import '../theme.dart';
// // import 'package:kossearch/pages/home.dart';
// // import 'package:kossearch/widgets/Navigator/favorite.dart';
// // import 'package:kossearch/widgets/Navigator/item.dart';
// // import 'package:kossearch/widgets/Navigator/mail.dart';
// // import 'package:kossearch/widgets/Navigator/search.dart';
//
// class BottomNavbarItem extends StatelessWidget {
//   final String imageUrl;
//   final bool isActive;
//
//   BottomNavbarItem({Key? key, this.imageUrl, this.isActive}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Spacer(),
//         Image.asset(
//           imageUrl,
//           width: 26,
//         ),
//         Spacer(),
//         isActive
//             ? Container(
//           width: 30,
//           height: 2,
//           decoration: BoxDecoration(
//             color: primaryColor,
//             borderRadius: BorderRadius.vertical(
//               top: Radius.circular(1000),
//             ),
//           ),
//         ) : Container(),
//       ],
//     );
//   }
// }
//
// // class BottomNavbarItem extends StatefulWidget {
// //   final String imageUrl;
// //   //final bool isActive;
// //
// //   BottomNavbarItem({this.imageUrl});
// //
// //   @override
// //   State<BottomNavbarItem> createState() => _BottomNavbarItemState();
// // }
// //
// // class _BottomNavbarItemState extends State<BottomNavbarItem> {
// //
// //   int _bottomNavCurrentIndex = 0;
// //   List<Widget> _container = [new HomePage(), new FavoriteItem(), new ItemItem(), new SearchItem(), new MailItem()];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         body: _container[_bottomNavCurrentIndex],
// //         bottomNavigationBar:
// //         BottomNavigationBar(
// //           type: BottomNavigationBarType.fixed,
// //           onTap: (index) {
// //             setState(() {
// //               _bottomNavCurrentIndex = index;
// //             });
// //             },
// //
// //           currentIndex: _bottomNavCurrentIndex,
// //           items:[
// //             BottomNavigationBarItem(
// //               icon: Image.asset(
// //                 widget.imageUrl,
// //                 width: 26,
// //                 color:  _bottomNavCurrentIndex == 0 ? Colors.purple : Colors.grey,
// //               ),
// //               // activeIcon: Image.asset(imageUrl, width: 26,),
// //               // icon: Image(color: _bottomNavCurrentIndex == 0 ? Colors.purple : Colors.grey,
// //               // ),
// //             ),
// //           ],
// //         ),
// //     );
// //   }
// // }
