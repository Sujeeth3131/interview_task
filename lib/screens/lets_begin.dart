import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/screens/Otp_verification.dart';
import 'package:interview_task/screens/home_screen.dart';
class Lets_Begin extends StatefulWidget {
  const Lets_Begin({super.key});

  @override
  State<Lets_Begin> createState() => _Lets_BeginState();
}

class _Lets_BeginState extends State<Lets_Begin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OTP_Verification()),
              );
            },
                child: Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.black,)),
            Center(child: Image(image: AssetImage("assets/dealsDray.jpeg"),width: 200,height: 200,)),
            SizedBox(height: 10,),
            Column(
              children: [
                Text("Let's Begin",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 20,),
            Text("Please enter your credentials to proceed",style: TextStyle(color: Colors.black45,fontSize: 18),),
            SizedBox(height: 40,),
            Text("Your Email",style: TextStyle(color: Colors.black45,fontSize: 18),),

            TextFormField(),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Create Password",style: TextStyle(color: Colors.black45,fontSize: 18),),
                SizedBox(width: 200,),
                Icon(Icons.remove_red_eye,size: 20,color: Colors.black,)
              ],
            ),
            TextFormField(),

            SizedBox(height: 20,),
            Text("ReferralCode(optional)",style: TextStyle(color: Colors.black45,fontSize: 18),),
            TextFormField(),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 50,width: 50,
                    child: ElevatedButton(// Within the `FirstRoute` widget:
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Home_Screen()),
                          );
                        },style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Set the button's background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // No rounded corners
                      ),// Set the text/icon color

                      // Set shadow color (if needed)
                     // Optional: Set elevation for the shadow effect
                    ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 100.0),
                          child: Icon(Icons.arrow_forward,color: Colors.white,size: 24,),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
