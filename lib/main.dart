import 'package:facebook/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _control;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _control = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _control.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return const home();
          },
        ));
      }
    });
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _control.dispose();
  }
  String n="image/n.webp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xbe0e0c0c),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_ivjtlkmt.json',
                controller: _control,
                repeat: false,
                onLoaded: (composition) {
                  _control.duration = composition.duration;
                  _control.forward();
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 20,
              child: Text("from",style: TextStyle(color: Colors.white),),
            ),
            SizedBox(
              height: 20,
            ),



          ],
        ),
      ),

    );
  }
}
