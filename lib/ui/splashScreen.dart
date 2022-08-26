import 'package:flutter/material.dart';
import 'homePge.dart';
class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  Future Delay() async{
    await Future.delayed(const Duration(seconds:4 ));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) =>HomePage()) ,);
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
      Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Image.asset("images/splash.jpg",fit: BoxFit.cover),
      ]),)

    );
  }
}
