import 'package:flutter/material.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Padding(padding: EdgeInsets.only(left: 15,right:15,top: 30, ),
            child:Container(width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width-360,
            decoration: BoxDecoration(
                color: Colors.black12,borderRadius: BorderRadius.circular(10)
            ),child: Padding(padding: EdgeInsets.only(left: 10),
                child: Row(children: [
                  Icon(Icons.search,color: Colors.grey),
                  Text("Search for store or item",style: TextStyle(color: Colors.grey),)
                ],),)),
            ),


          Container(width: MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height-63,
          child:ListView(children: [
            Container(width: 400,height: 100,color: Color(0xFF02AD8B),
              child:Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Image(image: NetworkImage("https://cdn.iconfinder.com/icons/6080161/6558349/256/raster.png?token=1661863686-6llmK8%2FHxvCD2tEzReP35vBZhh%2FpY7M%2F3394roaN%2Ftc%3D",scale: 3)),
                    SizedBox(width: 20,),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Order Anything!",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        Text("new on Toters! If it fits on",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w500)),
                        Text("motorbike we can deliver it.",style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w500)),
                      ],),
                    Spacer(),

                    Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,)
                  ],
                ),),),SizedBox(height: 10,),

            card(
                "images/1.jpg",
                "Happy Hour 🤩",
                "Get happy with up to 50% OFF from",
                "select stores before 7 PM!",
                34
            ),SizedBox(height: 30,),
            card(
                "images/2.jpg",
                "Weekly Discounts 🗓",
                "Get happy with up to 50% OFF from",
                "select stores before 7 PM!",
                34
            ),SizedBox(height: 30,),
            card(
                "images/3.jpg",
                "Happy Hour 🤩",
                "Get happy with up to 50% OFF from",
                "select stores before 7 PM!",
                34
            ),SizedBox(height: 30,),
            card(
                "images/4.jpg",
                "Happy Hour 🤩",
                "Get happy with up to 50% OFF from",
                "select stores before 7 PM!",
                34
            ),SizedBox(height: 30,),
            card(
                "images/5.jpg",
                "Happy Hour 🤩",
                "Get happy with up to 50% OFF from",
                "select stores before 7 PM!",
                34
            ),SizedBox(height: 30,),
            card(
                "images/1.jpg",
                "Happy Hour 🤩",
                "Get happy with up to 50% OFF from",
                "select stores before 7 PM!",
                34
            ),SizedBox(height: 30,),
            card(
                "images/2.jpg",
                "Happy Hour 🤩",
                "Get happy with up to 50% OFF from",
                "select stores before 7 PM!",
                34
            ),



          ]) ,)


        ],
      ),

    );
  }
  Row card(String url,String title,String des1,String des2,int storsNumber){
    return   Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [Container(width: 150,height: 100,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image:  DecorationImage(
          image: AssetImage(url),fit: BoxFit.cover
        ),
      ),),

        SizedBox(width: 10,),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
            SizedBox(height: 10,),
            Text(des1,style: TextStyle(color: Colors.grey)),
            Text(des1,style: TextStyle(color: Colors.grey)),
            SizedBox(height: 10,),
            Text("$storsNumber stors",style: TextStyle(color: Colors.green),)

          ],),

      ],
    );
  }
}
