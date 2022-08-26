import 'package:flutter/material.dart';

class Detiles extends StatefulWidget {
  final String url;
  final String name;
  final String rate;
  final String startTime;
  final String endTime;
  final String decription;
  final String commmenter;
  final String comment;
  Detiles({
    required this.name,
    required this.url,
    required this.rate,
    required this.startTime,
    required this.endTime,
    required this.decription,
    required this.commmenter,
    required this.comment,
  });

  @override
  State<Detiles> createState() => _DetilesState();
}

class _DetilesState extends State<Detiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  widget.url,
                                ),
                                fit: BoxFit.cover),
                          )),
                      Positioned(
                        child: Container(
                          width: 100,
                          height: 60,
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
                              "${widget.endTime}-${widget.startTime}",
                              style: TextStyle(fontSize: 30),
                            ),
                            Text(
                              "دقائق",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Colors.grey),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        widget.decription,
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
                            width: 70,
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
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0x4FFFA600),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("10% استعادة النقود",
                                      style: TextStyle(color: Colors.orange)),
                                  Icon(
                                    Icons.monetization_on_outlined,
                                    color: Colors.orange,
                                  )
                                ]),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0x4FFFA600),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("30% خصم",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w900)),
                                  Icon(
                                    Icons.discount_outlined,
                                    color: Colors.orange,
                                  )
                                ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                              Text("مرتكز على 2334 من التقييمات")
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "${widget.rate}",
                            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 1,
              color: Colors.black12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color(0xFFF5F35E),
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color(0xFFF5F35E),
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color(0xFFF5F35E),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.commmenter,
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ]),

                  Text(
                    '${widget.comment}',
                    style:
                    TextStyle(fontWeight: FontWeight.w900, color: Colors.grey, ),
                  ),

                      Text(
                        "اقرأ المزيد",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.green),
                      ),



                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 1,
                    color: Colors.black12,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.black12,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "اكتب تعليق",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, color: Colors.green),
                          ),
                          SizedBox(width: 5),
                          Image(
                            image: AssetImage("images/write_icon.png"),
                            color: Colors.green,
                            width: 20,
                            height: 20,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
    );
  }

  Column weekColumn(String url, String name, String stars) {
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
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          widget.url,
                        ),
                        fit: BoxFit.cover),
                  )),
              Positioned(
                child: Container(
                  width: 100,
                  height: 60,
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
                      "38-28",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "دقائق",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 12,
                          color: Colors.grey),
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              Text(
                " نقدم لكم الذ تشكيلة من مختلف الوجبات العربية والغربية",
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
                    width: 70,
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
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0x4FFFA600),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("10% استعادة النقود",
                              style: TextStyle(color: Colors.orange)),
                          Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.orange,
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0x4FFFA600),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("30% خصم",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w900)),
                          Icon(
                            Icons.discount_outlined,
                            color: Colors.orange,
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Text("مرتكز على 2334 من التقييمات")
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${widget.rate}",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
