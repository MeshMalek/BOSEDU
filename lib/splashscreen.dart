import 'package:flutter/material.dart';

import 'onboarding/onboarding.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }
  Future<void> _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => Onboarding()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff014BBA),
      body: Center(
        child: Column(

          children: [
            Spacer(flex: 2,),
            Image.asset('assets/Logo1.png'),
            Spacer(flex: 2,),
            Padding(
              padding: const .only(bottom: 20),
              child: Text('App Version 1.0',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: .bold
              ),),
            ),

          ],

        ),
      ),
    );
    
  }
}
