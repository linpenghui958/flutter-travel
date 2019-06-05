import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:my_app/dao/home_dao.dart';
import 'dart:convert';

import 'package:my_app/model/home_model.dart';
import 'package:my_app/widget/grid_nav.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

const APPBAR_SCROLL_OFFSET = 100;

class _HomePageState extends State<HomePage> {
  List _imageUrls = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556337683&di=4c27e7f1ec33c9218bb87594e546b33c&imgtype=jpg&er=1&src=http%3A%2F%2Fpic15.nipic.com%2F20110628%2F1369025_192645024000_2.jpg',
    'https://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg',
    'https://dimg04.c-ctrip.com/images/700c10000000pdili7D8B_780_235_57.jpg'
  ];

  double appBarAplh = 0;
  String resultString = 'resultString';
  
  @override
  void initState() {
    super.initState();
    loadData();
  }

  _onScroll(offset) {
    double aplh = offset / APPBAR_SCROLL_OFFSET;
    if (aplh < 0) {
      aplh = 0;
    } else if (aplh > 1) {
      aplh = 1;
    }
    setState(() {
      appBarAplh = aplh;
    });
    print(appBarAplh);
  }

  loadData() async {
    // HomeDao.fetch().then((res) {
    //   setState(() {
    //     resultString = json.encode(res);
    //   });
    // }).catchError((e) {
    //   setState(() {
    //     resultString = e.toString();
    //   });
    // });
    print('loaddata');
     try {
      HomeModel model = await HomeDao.fetch();
      setState(() {
        resultString = json.encode(model.config);
      });
     } catch (e) {
       setState(() {
         resultString = e.toString();
       });
     }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: NotificationListener(
              onNotification: (scrollNotification) {
                if(scrollNotification is ScrollUpdateNotification && 
                  scrollNotification.depth == 0) {
                    // 检测滚动，并且是listView滚动
                  _onScroll(scrollNotification.metrics.pixels);
                }
              },
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 160,
                    child: Swiper(
                      itemCount: _imageUrls.length,
                      autoplay: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          _imageUrls[index],
                          fit: BoxFit.fill,
                        );
                      },
                      pagination: SwiperPagination(),
                    )
                  ),
                  GridNav(gridNavModel: null,),
                  Container(
                    height: 800,
                    child: ListTile(
                      title: Text(resultString),
                    ),
                  )
                ],
              ),
            )
          ),
          Opacity(
            opacity: appBarAplh,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.grey),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('home page'),
                ),
              ),
            ),
          )
        ],
      ) 
    );
  }
}