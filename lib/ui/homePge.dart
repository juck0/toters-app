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
      leadingWidth: 300,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            children: [
            Image(image: AssetImage("images/setting_icon.png"),
                        width: 15,
                        height: 15),
              SizedBox(
                width: 20,
              ),
              Icon(
                  (Icons.notifications_none), color: Colors.grey, size: 15)

            ],
          ),
        )
      ],
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: GestureDetector(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering To",
                      style: TextStyle(color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text("Baghdad, Iraq",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0.5,
    ),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Green",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.info_outline,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
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
                          SizedBox(height: 5,),
                          Text(
                            "10 more orders by Semptember 30 to reach Gold",
                            style: TextStyle(color: Colors.grey,fontSize: 10),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text("Pts",
                                    style:
                                    TextStyle(fontWeight: FontWeight.w900)),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                )
                              ],
                            ),

                          ],
                        ),
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
                            padding: EdgeInsets.only(top: 60, left: 60),
                            child: Text("Food",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
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
                            padding: EdgeInsets.only(top: 60, left: 55),
                            child: Text("Market",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
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
                            padding: EdgeInsets.only(top: 75, left: 25),
                            child: Text("Rewards",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
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
                            padding: EdgeInsets.only(top: 75, left: 20),
                            child: Text("Add Funds",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
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
                            padding: EdgeInsets.only(top: 77, left: 29),
                            child: Text("Butler",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
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

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Weekly Discounts 🗓",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Get up to 50% OFF on these selected restaurants this week!",
                          style: TextStyle(color: Colors.grey,fontSize: 10),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
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
                          "Bite Burger",
                          "4.5",
                          "25","35",
                          "We offer you a wonderful assortment of fast food with high quality taste.",
                          "Ahmed",
                          "What a good sauce , great job.",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        weekColumn(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP-_QfDUNfh_1fNUnCOkvoxLbcTADePWLdAm67wNg1meO2K0MVuM0kTb2YHj2W8REdFKk&usqp=CAU",
                          "Arous Dimachk",
                          "4.9",
                          "30","35",
                          "All Arabic meals have become available, What are you waiting for? come and try it.",
                          "Sara",
                          "I hope you add a park in front of the restaurant so that I can come in my car.",),

                        SizedBox(
                          width: 20,
                        ),
                        weekColumn(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxh_ikl-U3CRe-FhxhhaZBDNH9Md9NqvzCwUdBsgW7UDhHrdwPtEK1rtKJ-EYSTb75Wuw&usqp=CAU",
                          "Zarzour",
                          "4.6",
                          "20","30", "We satisfy all tastes while maintaining the high quality of our dishes.",
                          "Ali",
                          "You brought me a torn dollar, I want to exchange it 😒.",),

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
                          SizedBox(height: 10,),
                          Text(
                            "Popcorn",
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
                                  scale: 0.9)),
                          SizedBox(height: 3,),
                          Text(
                            "West Food",
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
                                  "https://cdn.iconfinder.com/icons/8170096/8748945/64/raster.png?token=1662213562-0qqGorhfvmbknFyMt3RAt4CypeFr6EEbx5VsmLnwxgI%3D",
                                  scale: 0.9)),
                          SizedBox(height: 3,),Text(
                            "Taco",
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
                          SizedBox(height: 10,),
                          Text(
                            "Shawarma",
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
                          SizedBox(height: 10,),
                          Text(
                            "Juices",
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
                          SizedBox(height: 10,),
                          Text(
                            "Fast Food",
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
                          SizedBox(height: 10,),
                          Text(
                            "Pizza",
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
                          SizedBox(height: 10,),
                          Text(
                            "Burger",
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Nearby",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    closeColumn(
                        "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/9/15/1/JM-24in24_OTR-ann-sather-food-2_s4x3.jpg.rend.hgtvcom.616.411.suffix/1371611539338.jpeg",
                        "Notella",
                        "4.3"),
                    SizedBox(
                      height: 40,
                    ),
                    closeColumn(
                        "https://i.ytimg.com/vi/Q5SI8ARaa9w/hqdefault.jpg",
                        "Al-Gandol",
                        "4.7"),
                    SizedBox(
                      height: 40,
                    ),
                    closeColumn(
                        "https://ca-times.brightspotcdn.com/dims4/default/af1db87/2147483647/strip/true/crop/3712x2475+0+0/resize/840x560!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F4a%2F7a%2F83341f6f4716a361cd0f2a0b04db%2F928350-fo-0310-clark-street-diner-review-mrt-08.jpg",
                        "City Center",
                        "4.8"),
                    SizedBox(
                      height: 40,
                    ),
                    closeColumn(
                        "https://popmenucloud.com/cdn-cgi/image/width%3D1200%2Cheight%3D1200%2Cfit%3Dscale-down%2Cformat%3Dauto%2Cquality%3D60/mdoelbcj/a143664c-eb9f-4a5e-a7b5-dbc31196020b.jpg",
                        "Shmesani",
                        "4.9"),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          )),

    );
  }

  Column weekColumn(
      String url, String name, String rate,String startTime,String endTime,
      String decription,String commmenter,String comment) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    Text(
                      "20 - 30",
                      style: TextStyle( fontSize: 15,fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "mins",
                      style:
                      TextStyle(fontWeight: FontWeight.w900, fontSize: 10,color: Colors.grey),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 5,),
            Text(
              "\$\$ . Fast",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                        Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(width: 5,),
                        Text("Earn Point",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w900)),

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
      crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                      "20 - 30",
                      style: TextStyle( fontSize: 15,fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "mins",
                      style:
                      TextStyle(fontWeight: FontWeight.w900, fontSize: 10,color: Colors.grey),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),

            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10,),
            Text(
              " \$\$ . Fast",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      children: [Icon(
                        Icons.add_circle_outline,
                        color: Colors.blueAccent,
                      ),
                        Text("Earn Point",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w900)),

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

