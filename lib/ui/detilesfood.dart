import 'package:flutter/material.dart';
class FoodDetils extends StatefulWidget {
  @override
  State<FoodDetils> createState() => _FoodDetilsState();
}
class _FoodDetilsState extends State<FoodDetils> {
  String radioItem = "";
  bool checkedValue = true;
  bool checkedValue2 = true;
  int x= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
          actions: [
        Icon(Icons.favorite_border,color: Colors.black),
        Icon(Icons.share,color: Colors.black),
      ],
      leading: Icon(Icons.cancel_outlined,color: Colors.black)),
      body:  ListView(
            children: [
              Container(height: 300,width: 500,child: Image(image: NetworkImage("https://i0.wp.com/bestgcc.com/wp-content/uploads/2020/12/%D8%A8%D8%B1%D8%BA%D8%B1-465-%D8%A7%D9%84%D8%A8%D8%AD%D8%B1%D9%8A%D9%86.jpg?resize=300%2C225&ssl=1"),height: 200,width: 900,fit: BoxFit.cover),),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),child:           Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Chicken Madfoun Platter",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
                  SizedBox(height: 20,),
                  Text("desafasf;aisfsgsgw'esgdgdskdlgkds",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 20,),
                  Text("IQD 13,000",style: TextStyle(color: Colors.green)),
                  SizedBox(height: 40,),
                ],),)
              ,

              Container(height: 10,color: Colors.grey,),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.symmetric(
                  horizontal: 20),
                child:Text("choose Portion ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900)),
              ),
              SizedBox(height: 20,),
              RadioListTile(
                  activeColor: Colors.green,

                  title: Text("Ali"),
                  value: "this is Ali",
                  groupValue: radioItem,
                  onChanged: (val){
                    setState(() {
                      radioItem = "$val";

                    });
                  }),
              RadioListTile(
                  activeColor: Colors.green,
                  title: Text("zahrra"),
                  value: "this is zahrra",
                  groupValue: radioItem,
                  onChanged: (val){
                    setState(() {
                      radioItem = "$val";

                    });
                  }),
              RadioListTile(
                activeColor: Colors.green,
                title: Text("Aymn"),
                  value: "this is aymn",
                  groupValue: radioItem,
                  onChanged: (val){
                    setState(() {
                      radioItem = "$val";

                    });
                  }),
              Container(height: 10,color: Colors.grey,),
              SizedBox(height: 20,),
              CheckboxListTile(
                title: Text("Aymn"),
                  value: checkedValue,
                  onChanged: (value){
                setState(() {
                  checkedValue = value!;
                });
                  }),
              CheckboxListTile(
                activeColor: Colors.red,
                  title: Text("Aymn"),
                  value: checkedValue2,
                  onChanged: (value){
                    setState(() {
                      checkedValue = value!;
                    });
                  }),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                IconButton(onPressed: (){
                  setState(() {
                    if(x>0)
                      x=x-1;
                  });
                }, icon: Icon(Icons.minimize)),
                Text("$x"),
                IconButton(onPressed: (){
                  setState(() {
                    if(x!=0) x=x+1;
                  });
                }, icon: Icon(Icons.add)),

              ],)






            ],
      ));
  }}
