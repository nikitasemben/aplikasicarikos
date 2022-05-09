import 'package:flutter/material.dart';
import 'package:kossearch/pages/error_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/space.dart';
import '../theme.dart';
import '../widgets/facility.dart';
import '../widgets/rating.dart';

class DetailPage extends StatefulWidget {

  final Space space;

  DetailPage(this.space);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async{
      if(await canLaunch(url)){
        launch(url);
      }else {
        //throw(url);
        Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),),
        );
      }
    }
    Future<void> showConfirmation() async {
      return showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: const Text('Konfirmasi'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('Apakah kamu ingin menghubungi pemilik kos?'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Batal'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Hubungi'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    launchUrl('tel:${widget.space.phone}');
                  },
                ),
              ],
            );

          }
      );
    }
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              widget.space.imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),

            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      //Judul
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.space.name,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$${widget.space.price}',
                                    children: [
                                      TextSpan(
                                        text: '/ month',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [1,2,3,4,5].map((index){
                                return Container(
                                  margin: EdgeInsets.only(
                                    left: 2,
                                  ),
                                  child: RatingItem(
                                    index: index,
                                    rating: widget.space.rating,
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      //Main Fasilitas
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            FacilityItem(name: 'Kitchen', imageUrl: 'assets/images/icon_kitchen.png', total: widget.space.numberOfKitchens,),
                            FacilityItem(name: 'Bedroom', imageUrl: 'assets/images/icon_bedroom.png', total: widget.space.numberOfBedrooms,),
                            FacilityItem(name: 'Big Lemari', imageUrl: 'assets/images/icon_lemari.png', total: widget.space.numberOfCupboards,),
                          ],
                        ),
                      ),
                      //Photo
                      SizedBox(height: 30,),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children:
                          widget.space.photos.map((item) {
                            return Container(
                              margin: EdgeInsets.only(left: 24),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  item, width: 118, height: 88,
                                ),
                              ),
                            );
                          }).toList(),

                        ),
                      ),
                      //lokasi
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: edge
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${widget.space.address}\n${widget.space.city}',
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: (){
                                //launchUrl('https://goo.gl/maps/Wp6PY2t9ThAbgwC1A');
                                launchUrl(widget.space.mapUrl);
                              },
                              child: Image.asset('assets/images/btn_map.png', width: 40,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: RaisedButton(
                          onPressed: (){
                            showConfirmation();
                          },
                          color: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child:  Image.asset('assets/images/btn_back.png', width: 40,),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: Image.asset(
                      isClicked
                          ? 'assets/images/btn_wishlist_filed.png'
                          :'assets/images/btn_wishlist.png',
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class DetailPage extends StatefulWidget {
//   final Space space;
//
//   DetailPage(this.space);
//
//   @override
//   State<DetailPage> createState() => _DetailPageState();
// }
//
// class _DetailPageState extends State<DetailPage> {
//   bool isFavorite = false;
//   @override
//   Widget build(BuildContext context) {
//     launchUrl(String url) async {
//       if (await canLaunch(url)) {
//         launch(url);
//       } else {
//         // throw (url);
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ErrorPage(),
//           ),
//         );
//       }
//     }
//
//     Future<void> handleBook(Space space) async {
//       return showDialog<void>(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('Konfirmasi'),
//             content: SingleChildScrollView(
//               child: ListBody(
//                 children: <Widget>[
//                   Text('Apakah kamu ingin menghubungi pemilik kos?'),
//                 ],
//               ),
//             ),
//             actions: <Widget>[
//               TextButton(
//                 child: Text(
//                   'Nanti',
//                   style: greyTextStyle,
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//               TextButton(
//                 child: Text('Hubungi'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                   launchUrl('tel:${space.phone}');
//                 },
//               ),
//             ],
//           );
//         },
//       );
//     }
//
//     return Scaffold(
//       backgroundColor: whiteColor,
//       body: SafeArea(
//         bottom: false,
//         child: Stack(
//           children: [
//             Image.network(
//               widget.space.imageUrl,
//               width: MediaQuery.of(context).size.width,
//               height: 350,
//               fit: BoxFit.cover,
//             ),
//             ListView(
//               children: [
//                 SizedBox(
//                   height: 328,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.vertical(
//                       top: Radius.circular(20),
//                     ),
//                     color: whiteColor,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 30,
//                       ),
//                       // NOTE: TITLE
//                       Padding(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: edge,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   widget.space.name,
//                                   style: blackTextStyle.copyWith(
//                                     fontSize: 22,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 2,
//                                 ),
//                                 Text.rich(
//                                   TextSpan(
//                                     text: '\$${widget.space.price}',
//                                     style: purpleTextStyle.copyWith(
//                                       fontSize: 16,
//                                     ),
//                                     children: [
//                                       TextSpan(
//                                         text: ' / month',
//                                         style: greyTextStyle.copyWith(
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [1, 2, 3, 4, 5].map((index) {
//                                 return Container(
//                                   margin: EdgeInsets.only(
//                                     left: 2,
//                                   ),
//                                   child: RatingItem(
//                                     index: index,
//                                     rating: widget.space.rating,
//                                   ),
//                                 );
//                               }).toList(),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       // NOTE: MAIN FACILITIES
//                       Padding(
//                         padding: EdgeInsets.only(left: edge),
//                         child: Text(
//                           'Main Facilities',
//                           style: regularTextStyle.copyWith(
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 12,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: edge,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             FacilityItem(
//                               name: 'kitchen',
//                               imageUrl: 'assets/images/icon_kitchen.png',
//                               total: widget.space.numberOfKitchens,
//                             ),
//                             FacilityItem(
//                               name: 'bedroom',
//                               imageUrl: 'assets/images/icon_bedroom.png',
//                               total: widget.space.numberOfBedrooms,
//                             ),
//                             FacilityItem(
//                               name: 'Big Lemari',
//                               imageUrl: 'assets/images/icon_lemari.png',
//                               total: widget.space.numberOfCupboards,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       // NOTE: PHOTO
//                       Padding(
//                         padding: EdgeInsets.only(left: edge),
//                         child: Text(
//                           'Photos',
//                           style: regularTextStyle.copyWith(
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 12,
//                       ),
//                       Container(
//                         height: 88,
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           children: widget.space.photos.map((item) {
//                             return Container(
//                               margin: EdgeInsets.only(
//                                 left: 24,
//                               ),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(16),
//                                 child: Image.network(
//                                   item,
//                                   width: 110,
//                                   height: 88,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             );
//                           }).toList(),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       // NOTE: LOCATION
//                       Padding(
//                         padding: EdgeInsets.only(left: edge),
//                         child: Text(
//                           'Location',
//                           style: regularTextStyle.copyWith(
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 6,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: edge),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               '${widget.space.address}\n${widget.space.city}',
//                               style: greyTextStyle,
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 // launchUrl(
//                                 //     'https://goo.gl/maps/SyZx2yjWB1yR6AeH8');
//
//                                 launchUrl(widget.space.mapUrl);
//                               },
//                               child: Image.asset(
//                                 'assets/images/btn_map.png',
//                                 width: 40,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Container(
//                         margin: EdgeInsets.symmetric(
//                           horizontal: edge,
//                         ),
//                         height: 50,
//                         width: MediaQuery.of(context).size.width - (2 * edge),
//                         child: RaisedButton(
//                           onPressed: () {
//                             showConfirmation();
//                           },
//                           color: primaryColor,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(17),
//                           ),
//                           child: Text(
//                             'Book Now',
//                             style: whiteTextStyle.copyWith(
//                               fontSize: 18,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 40,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: edge,
//                 vertical: 30,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: Image.asset(
//                       'assets/images/btn_back.png',
//                       width: 40,
//                     ),
//                   ),
//                   // Image.asset(
//                   //   'assets/btn_wishlist.png',
//                   //   width: 40,
//                   // ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         isFavorite = !isFavorite;
//                       });
//                     },
//                     child: Image.asset(
//                       isFavorite
//                           ? 'assets/images/btn_wishlist_filled.png'
//                           : 'assets/images/btn_wishlist.png',
//                       width: 40,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
