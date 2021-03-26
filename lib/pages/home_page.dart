
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
const APPBAR_SCROLL_OFFSET = 100;
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imageUrls = [
    'https://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg',
    'https://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg',
    'https://dimg04.c-ctrip.com/images/700c10000000pdili7D8B_780_235_57.jpg'
  ];
  _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha  < 0 ) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appbarAlpha = alpha;
    });
  }
  double appbarAlpha = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
              children: [MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: NotificationListener(
              onNotification: (s) {
                if (s is ScrollUpdateNotification && s.depth == 0) {
                  _onScroll(s.metrics.pixels);
                }
              },
                    child: ListView(children: [
              Container(
                height: 160,
                child: Swiper(
                  itemCount: _imageUrls.length,
                  autoplay: true,
                  pagination: SwiperPagination(),
                  itemBuilder: (context, index) =>
                      Image.network(_imageUrls[index], fit: BoxFit.fill),
                ),
              ),
              Container(
                height: 800,
                child: ListTile(
                  title: Text("哈哈"),
                ),
              ),
            ]),
          ),
        ),
        Opacity(opacity: appbarAlpha,
          child: Container(
            height: 80,
            decoration: BoxDecoration(color: Colors.white),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child:Text('首頁')
              )

              ,),
          ),
         )

        ],
      ),
    );
  }
}