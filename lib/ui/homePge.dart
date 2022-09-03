import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toters_app/ui/profile.dart';
import 'package:toters_app/ui/search.dart';
import '/ui/detiles.dart';
import 'orderPage.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> listImages = [
    'images/50%.jpg',
    'images/discount.jpg',
    'images/pizza.jpg',
    'images/school.jpg',
    'images/point.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image(
                  image: AssetImage("images/setting_icon.png"),
                  width: 15,
                  height: 15),
              SizedBox(
                width: 6,
              ),
              Icon(Icons.notifications_none, color: Colors.grey, size: 15),
            ]),
          ),
          elevation: 0.7,
          actions: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("توصيل الى ", style: TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.w700)),
                Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    Text("المنزل", style: TextStyle(color: Colors.black,
                        fontSize: 16,fontWeight: FontWeight.w900)),
                  ],
                )
              ],
            ),SizedBox(width:20,),
          ]),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text("نقطة",
                                    style:
                                    TextStyle(fontWeight: FontWeight.w900)),
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "3.8k",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "الفئة الخضراء ",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 10,
                                height: 1,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                            ],
                          ),
                          Text(
                            "تبقى 9 طلبات اضافية لغاية 31 اغسطس ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            " للترقية للفئة الذهبية",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  CarouselImages(
                    scaleFactor: 0.9,
                    listImages: listImages,
                    height: 200.0,
                    borderRadius: 20.0,
                    cachedNetworkImage: true,
                    verticalAlignment: Alignment.bottomCenter,
                    onTap: (index) {
                      print('Tapped on page $index');
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.iconfinder.com/icons/1318010/1758390/256/raster.png?token=1662212284-1IbD9JDbuCPb8tsWXADIaDGUbkN6URXegBuBBOQoQHw%3D",
                                  scale: 7),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 55, left: 60),
                            child: Text("متاجر",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
"https://cdn.iconfinder.com/icons/4025918/4494283/256/raster.png?token=1662212581-SMIzLjT%2FxW7jrm1qL%2BKM3W%2BsVT5qYqAm6JiZlb%2BON3g%3D"
                                  ,scale: 6),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 55, left: 50),
                            child: Text("توترز فريش",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          )),

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 99,
                          width: 99,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
"https://cdn.iconfinder.com/icons/3594853/4061185/256/raster.png?token=1662212986-NGmKH9hUtpwv9Ku57KV7Bkh%2FjohBEDSdeBozJJjB2Rw%3D",
                                  scale: 5),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 70, left: 30),
                            child: Text("المندوب",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 99,
                          width: 99,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
"https://cdn.iconfinder.com/icons/731083/1154172/128/raster.png?token=1662213149-7BJhfcMrjZeurisoTmQWqabnmqVM%2FYj9dQ4V7hTlnA0%3D",
                                  scale: 3),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 70, left: 20),
                            child: Text("اضف رصيد",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 99,
                          width: 99,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
"https://cdn.iconfinder.com/icons/2804679/3265947/256/raster.png?token=1662213394-U7iVa5r6e11%2B6x6yhJ%2BnPHQt9D1Nh95pv6bSJkyzOok%3D",
                                  scale: 5),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 70, left: 25),
                            child: Text("جوائز تورز",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ]),
              ),
              Container(
                width: 600,
                height: 10,
                color: Colors.black12,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "خصومات اسبوعية",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "احصل على خصم %50 على مطاعم هذا الاسبوع ",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                child: Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        weekColumn(
                            "https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/burger-in-Al-ain-Cover-ar-01122020.jpg",
                            "هايزن برغر",
                            "4.5",
                          "25","35",
                            "نقدم لكم تشكيلة رائعة من الوجبات السريعة بمذاق وجودة عالية",
                            "أحمد",
                          "الطعب رهييييب عاشت ايدكم على الصلصة الجهنمية",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        weekColumn(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP-_QfDUNfh_1fNUnCOkvoxLbcTADePWLdAm67wNg1meO2K0MVuM0kTb2YHj2W8REdFKk&usqp=CAU",
                            "عروس دمشق",
                            "4.9",
                            "30","35",
                          "جميع الوجبات العربية صارت يمنا , يلا شمنتظر ؟ خلينا نجرها",
                          "سوسن",
                          " ياريت تضيفون بارك امام المطعم حتى اكدر اجي بسيارتي",),

                        SizedBox(
                          width: 20,
                        ),
                        weekColumn(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxh_ikl-U3CRe-FhxhhaZBDNH9Md9NqvzCwUdBsgW7UDhHrdwPtEK1rtKJ-EYSTb75Wuw&usqp=CAU",
                            "كباب زرزور",
                            "4.6",
                            "20","30", "نرض جميع الاذواق مع الحفاظ على القيمة العالية لاطباقنا",
                          "معتز",
                          "رحعتولي الف مشكوك اريد ابدلة 😒",),

                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 600,
                height: 10,
                color: Colors.black12,
              ),
              Padding(
                  padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child:
                    ListView(scrollDirection: Axis.horizontal, children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: NetworkImage(
"https://cdn.iconfinder.com/icons/8170090/8748939/64/raster.png?token=1662213562-Ke51zqHpR0svazx4LaUqU7F1U5h%2B9x8RJsjuHZ8QKHQ%3D",                                  scale: 1)),
                          Text(
                            "نمنميات",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: NetworkImage(
                                  "https://cdn.iconfinder.com/icons/8170105/8748955/64/raster.png?token=1662213562-AOXzyjaiWWuAlMLvuas5%2BF%2FXuVJqDLxKogPhbYKc7K0%3D",
                                  scale: 1)),
                          Text(
                            "  غربي",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: NetworkImage(
"https://cdn.iconfinder.com/icons/8170096/8748945/64/raster.png?token=1662213562-0qqGorhfvmbknFyMt3RAt4CypeFr6EEbx5VsmLnwxgI%3D",                                  scale: 1)),
                          Text(
                            "  تاكو",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: NetworkImage(
"https://cdn.iconfinder.com/icons/8170109/8748959/64/raster.png?token=1662213562-XhcF8c%2FY7SIkCNxgXJqybyq6FBuqZAJEp1W3Y1mlmvY%3D",
                                  scale: 1)),
                          Text(
                            "شاورما",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: NetworkImage(
"https://cdn.iconfinder.com/icons/8170094/8748943/64/raster.png?token=1662213562-ve9qR0HfPC50yVz%2BkdBD18l37OLTcHjeYbVIhWG%2BVSk%3D",
                                  scale: 1)),
                          Text(
                            "عصائر",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: NetworkImage(
                                  "https://cdn.iconfinder.com/icons/8170092/8748941/64/raster.png?token=1662213562-PwsXkfzE5g3qSmTPV%2Fz4444HcOie6%2FDqQXXuLUBGnOQ%3D",
                                  scale: 1)),
                          Text(
                            "فاستفود",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: NetworkImage(
                                  "https://cdn.iconfinder.com/icons/8170101/8748950/64/raster.png?token=1662213562-DF0TnkSpsRjK4IpLiAIK7O0JB5f7vm7yerbWQ4hZ2y4%3D",
                                  scale: 1)),
                          Text(
                            "   بيتزا",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: NetworkImage(
                                  "https://cdn.iconfinder.com/icons/8170103/8748952/256/raster.png?token=1662212416-mTSm06XbBvi9gbzN5TPr%2FVmR1iM6mUIzWBxRBqTdZzA%3D",
                                  scale: 4)),
                          Text(
                            "   برغر",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(width: 20),
                    ]),
                  )),
              Container(
                width: 600,
                height: 10,
                color: Colors.black12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "قريب",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    closeColumn(
                        "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/9/15/1/JM-24in24_OTR-ann-sather-food-2_s4x3.jpg.rend.hgtvcom.616.411.suffix/1371611539338.jpeg",
                        "مطعم نيوتلا",
                        "4.3"),
                    SizedBox(
                      height: 40,
                    ),
                    closeColumn(
                        "https://i.ytimg.com/vi/Q5SI8ARaa9w/hqdefault.jpg",
                        "الجندول",
                        "4.7"),
                    SizedBox(
                      height: 40,
                    ),
                    closeColumn(
                        "https://ca-times.brightspotcdn.com/dims4/default/af1db87/2147483647/strip/true/crop/3712x2475+0+0/resize/840x560!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F4a%2F7a%2F83341f6f4716a361cd0f2a0b04db%2F928350-fo-0310-clark-street-diner-review-mrt-08.jpg",
                        "ستي سنتر",
                        "4.8"),
                    SizedBox(
                      height: 40,
                    ),
                    closeColumn(
                        "https://popmenucloud.com/cdn-cgi/image/width%3D1200%2Cheight%3D1200%2Cfit%3Dscale-down%2Cformat%3Dauto%2Cquality%3D60/mdoelbcj/a143664c-eb9f-4a5e-a7b5-dbc31196020b.jpg",
                        "شميساني",
                        "4.9"),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          )),
      // bottomNavigationBar: BottomNavigationBar(
      //
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.white,
      //   selectedLabelStyle: TextStyle(color: Colors.green),
      //   currentIndex: 4,
      //   items: <BottomNavigationBarItem>[
      //
      //
      //
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline_rounded, color: Colors.black12),
      //       label: 'حساب',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.list_alt, color: Colors.black12),
      //       label: 'طلبات',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home, color: Colors.black12),
      //       label: 'المندوب',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search_outlined, color: Colors.black12),
      //       label: 'بحث',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home, color: Colors.green),
      //       label: 'رئيسية',
      //     ),
      //   ],
      //   selectedItemColor: Colors.white,
      // ),

    );
  }

  Column weekColumn(
      String url, String name, String rate,String startTime,String endTime,
      String decription,String commmenter,String comment) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detiles(name: name,
                        endTime: endTime,startTime:startTime,comment: comment,commmenter: commmenter,decription: decription,
                        url: url, rate: rate,)));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(
                            url,
                          ),
                          fit: BoxFit.cover),
                    )),
              ),
              Positioned(
                child: Container(
                  width: 70,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(children: [
                    Text(
                      "طلب مسبق",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      "1:33  ص",
                      style:
                      TextStyle(fontWeight: FontWeight.w900, fontSize: 10),
                    )
                  ]),
                ),
                bottom: -10,
                left: 10,
              ),
              Positioned(
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                left: 20,
                top: 10,
              )
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Text(
              " عراقي.\$\$",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0x649CBBFF),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("اكسب نقاط",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w900)),
                        Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueAccent,
                        )
                      ]),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(rate),
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.green,
                        )
                      ]),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column closeColumn(String url, String name, String rate) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                          url,
                        ),
                        fit: BoxFit.cover),
                  )),
              Positioned(
                child: Container(
                  width: 70,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(children: [
                    Text(
                      "طلب مسبق",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      "1:33  ص",
                      style:
                      TextStyle(fontWeight: FontWeight.w900, fontSize: 10),
                    )
                  ]),
                ),
                bottom: -10,
                left: 10,
              ),
              Positioned(
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                left: 20,
                top: 10,
              )
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            Text(
              " عراقي.\$\$",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0x649CBBFF),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("اكسب نقاط",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w900)),
                        Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueAccent,
                        )
                      ]),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(rate),
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.green,
                        )
                      ]),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

}

