import 'package:easy_search/core/easy_search.dart';
import 'package:easy_search/easy_search.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kossearch/models/space.dart';
import 'package:kossearch/pages/detail_page.dart';
import 'package:kossearch/widgets/tipsguide/guide_card.dart';
import 'package:kossearch/widgets/tipsguide/pageItem.dart';
import 'package:provider/provider.dart';
import '../models/city.dart';
import '../models/space.dart';
import '../models/tips.dart';
import '../providers/space_provider.dart';
import '../theme.dart';
import '../widgets/city.dart';
import '../widgets/space_card.dart';
import '../widgets/tips_card.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/tipsguide/page.dart';
import '../widgets/tipsguide/tips_card.dart';


class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  Space space;
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    int _selectedIndex = 0;
    bool _folded = true;


    return Scaffold(

      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(

          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE: TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            // NOTE: POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),

            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/city1.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/images/city2.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/city3.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 4,
                      name: 'Palembang',
                      imageUrl: 'assets/images/city4.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 5,
                      name: 'Aceh',
                      imageUrl: 'assets/images/city5.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 6,
                      name: 'Bogor',
                      imageUrl: 'assets/images/city6.png',
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: FutureBuilder(
                future: spaceProvider.getRecommendedSpaces(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Space> data = snapshot.data;
                    int index = 0;
                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 30,
                          ),
                          child: SpaceCard(item),
                        );
                      }).toList(),
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),

            SizedBox(
              height: 30,
            ),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),

              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'City Guidelines',
                      imageUrl: 'assets/images/tips1.png',
                      updatedAt: '20 Apr',
                      ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TipsItem()));
                        //Get.to(TipsItem());
                      },
                      icon: Icon(
                        Icons.chevron_right,
                        color: greyColor,
                      ),
                    ),
                     //Get.to(TipsItem());
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/images/tips2.png',
                      updatedAt: '11 Dec',
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GuideItem()));
                        //Get.to(GuideItem());
                      },
                      icon: Icon(
                        Icons.chevron_right,
                        color: greyColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(
              height: 100 + edge,
            ),
          ],
        ),
      ),
      // floatingActionButton: Container(
      //   height: 65,
      //   width: MediaQuery.of(context).size.width - (2 * edge),
      //   margin: EdgeInsets.symmetric(
      //     horizontal: edge,
      //   ),
      //   decoration: BoxDecoration(
      //     color: Color(0xffF6F7F8),
      //     borderRadius: BorderRadius.circular(23),
      //   ),
      //
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //
      //     children: [
      //      // NavigatorItem(),
      //      //  BottomNavbarItem(
      //      //    imageUrl: 'assets/images/icon_home.png',
      //      //    isActive: true,
      //      //
      //      //  ),
      //      //  BottomNavbarItem(
      //      //    imageUrl: 'assets/images/icon_email.png',
      //      //    isActive: false,
      //      //
      //      //  ),
      //      //  BottomNavbarItem(
      //      //    imageUrl: 'assets/images/icon_search.png',
      //      //    isActive: false,
      //      //
      //      //  ),
      //      //  BottomNavbarItem(
      //      //      imageUrl: 'assets/images/icon_card.png',
      //      //      isActive: false,
      //      //
      //      //  ),
      //      //  BottomNavbarItem(
      //      //    imageUrl: 'assets/images/icon_love.png',
      //      //    isActive: false,
      //      //    ),
      //     ],
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


