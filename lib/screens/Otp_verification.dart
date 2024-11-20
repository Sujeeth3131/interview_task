import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/screens/lets_begin.dart';
import 'package:interview_task/screens/mobile_number.dart';
class OTP_Verification extends StatefulWidget {
  const OTP_Verification({super.key});

  @override
  State<OTP_Verification> createState() => _OTP_VErificationState();
}

class _OTP_VErificationState extends State<OTP_Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            GestureDetector(onTap: (){  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Mobile_Number()),
            );},
                child: Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.black,)),
            SizedBox(height: 40,),
            Image(image: AssetImage("mobile_img.png"),width: 100,height: 100,),
            SizedBox(height: 40),
            Text("OTP Verification",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("We have senta unique OTP number",style: TextStyle(color: Colors.black45,fontSize: 16),),
            Text("to your mobile +91-9765232817",style: TextStyle(color: Colors.black45,fontSize: 16),),
            SizedBox(height: 40,),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,

                  decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 60,
                  width: 60,

                  decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 60,
                  width: 60,

                  decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 60,
                  width: 60,

                  decoration: BoxDecoration(color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(width: 20,),

              ],
            ),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(onPressed: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Lets_Begin()),
              );}, child: Text("Proceed")),
            )



          ],
        ),
      ),
    );
  }
}
