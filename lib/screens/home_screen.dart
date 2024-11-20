import 'package:flutter/material.dart';
class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.display_settings_outlined,color: Colors.black,size: 20,),
              SizedBox(width: 10,),
              Row(
                children: [
                  Container(
                    height: 20,width:125,decoration: BoxDecoration(),
                  ),
                ],
              ),
              SizedBox(height: 5,),

            ],
          )
        ],
      ),
    );
  }
}
