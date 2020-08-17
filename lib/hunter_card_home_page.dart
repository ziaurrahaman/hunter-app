import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:huneter_card_app_home/data/dummy_data.dart';
import 'package:huneter_card_app_home/listviewItem/borchure_list_item.dart';
import 'package:huneter_card_app_home/listviewItem/category_list_item.dart';
import 'package:huneter_card_app_home/listviewItem/deals_by_shop_list_item.dart';
import 'package:huneter_card_app_home/listviewItem/promo_list_item.dart';
import 'package:huneter_card_app_home/mebership_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HunterCardHomePage extends StatefulWidget {
  @override
  _HunterCardHomePageState createState() => _HunterCardHomePageState();
}

class _HunterCardHomePageState extends State<HunterCardHomePage> {
  int _current;
  @override
  void initState() {
    _current = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Color(0xff000c4f),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
    final deviceSize = MediaQuery.of(context).size;
    CarouselSlider carouselSlider;
    var _pageSize = MediaQuery.of(context).size.height;
    var _notifySize = MediaQuery.of(context).padding.top;
    var _appBarSize = appBar.preferredSize.height;
    List imgList = [
      MembershipCard(),
      MembershipCard(),
      MembershipCard(),
      MembershipCard(),
    ];

    List<T> map<T>(List list, Function handler) {
      List<T> result = [];
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
      return result;
    }

    Widget buildTopSectionForListveiw(String title) {
      return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        child: Row(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              'See All',
              style: TextStyle(
                  color: Color(0xff000c4f),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      );
    }

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Icon(
            MdiIcons.dotsVertical,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff000c4f),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(),
        body: Column(
          children: <Widget>[
            Container(
              color: Color(0xff31c3d6),
              height: _pageSize - (_appBarSize + _notifySize + 80),
              child: ListView(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: EdgeInsets.all(10),
                    elevation: 4,
                    color: Colors.amber,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            IconButton(
                              alignment: Alignment.centerLeft,
                              iconSize: 48,
                              icon: Icon(
                                Icons.gps_fixed,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Text(
                                'Hunter Card',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 32),
                              ),
                            ),
                            Spacer()
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Hunter Name',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            '12,300 Points',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        )
                      ],
                    ),
                  ),
                  buildTopSectionForListveiw('Promo'),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8,
                    ),
                    child: Container(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) => PromoListItem(
                          imagePath: promo_dummy_data[index].imagePath,
                          brand: promo_dummy_data[index].productBrandName,
                          prName: promo_dummy_data[index].productName,
                          prCurrentPrice: promo_dummy_data[index].currentPrice,
                          prPreviousPrice:
                              promo_dummy_data[index].previousPrice,
                        ),
                        itemCount: promo_dummy_data.length,
                      ),
                    ),
                  ),
                  buildTopSectionForListveiw('Categories'),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 140,
                    child: Container(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) => CategoryListItem(
                          iconPath: category_dummy_data[index].iconPath,
                          categories: category_dummy_data[index].categoryName,
                        ),
                        itemCount: category_dummy_data.length,
                      ),
                    ),
                  ),
                  buildTopSectionForListveiw('Deals by Shop'),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 140,
                    child: Container(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) => DealsByShopItem(
                          icon: deals_by_shop_dummy_data[index].icon,
                          shopName: deals_by_shop_dummy_data[index].shopName,
                          index: index,
                        ),
                        itemCount: deals_by_shop_dummy_data.length,
                      ),
                    ),
                  ),
                  buildTopSectionForListveiw('My Discount Card'),
                  Container(
                    child: Column(
                      children: <Widget>[
                        carouselSlider = CarouselSlider(
                          viewportFraction: 1.0,
                          aspectRatio: 2.0,
                          height: 220.0,
                          initialPage: 0,
                          enlargeCenterPage: false,
                          autoPlay: true,
                          reverse: false,
                          enableInfiniteScroll: true,
                          autoPlayInterval: Duration(seconds: 6),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 3000),
                          pauseAutoPlayOnTouch: Duration(seconds: 4),
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index) {
                            setState(() {
                              _current = index;
                            });
                          },
                          items: imgList.map((imgUrl) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration: BoxDecoration(
                                      // color: Colors.green,
                                      ),
                                  child: MembershipCard(),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: map<Widget>(imgList, (index, url) {
                            return Container(
                              width: 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index
                                    ? Color(0xff000c4f)
                                    : Colors.white,
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                  buildTopSectionForListveiw('Brochures'),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 140,
                    child: Container(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) => BrochureListItem(
                          marketName: brochure_dummy_data[index].sMarketName,
                        ),
                        itemCount: brochure_dummy_data.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 80,
                width: deviceSize.width,
                color: Color(0xff333333),
                child: Text('Advertising',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white)))
          ],
        ));
  }
}
