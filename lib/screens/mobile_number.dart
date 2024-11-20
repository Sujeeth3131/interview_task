import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/screens/Otp_verification.dart';
import 'package:toggle_switch/toggle_switch.dart';
class Mobile_Number extends StatefulWidget {

  TextEditingController countrycode=TextEditingController(

  );
  var phone="";
  // Initial switch state
  Mobile_Number({super.key});

  @override
  void initState() {
    countrycode.text = "+91";
  }
  State<Mobile_Number> createState() => _Mobile_NumberState();
}

class _Mobile_NumberState extends State<Mobile_Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0,top:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.black,),
              ],
            ),

            Center(
              child: Image(
                image: AssetImage("assets/dealsDray.jpeg"),
                width: 220,
                height: 220,
              ),
            ),

            // Center(
            //   child: Switch(
            //     value: isSwitched,
            //     onChanged: (value) {
            //       setState(() {
            //         isSwitched = value; // Toggle switch state
            //       });
            //     },
            //     activeColor: Colors.red, // Thumb color when active (selected)
            //     activeTrackColor: Colors.red.shade200, // Track color when active
            //     inactiveThumbColor: Colors.grey, // Thumb color when inactive
            //     inactiveTrackColor: Colors.grey.shade400, // Track color when inactive
            //   ),
            // ),

            Text("Glad to see you!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
            SizedBox(height: 10,),
            Text("Please provide your phone number",style: TextStyle(color: Colors.black45,fontSize: 18),),
            SizedBox(height: 40,),
            Text("Phone",style: TextStyle(color: Colors.black,fontSize: 18),),
            SizedBox(height: 5,),
            TextField(keyboardType: TextInputType.phone,
            onChanged: (value){phone=value;},),
            SizedBox(height: 30,),
            Center(
              child: SizedBox(height: 45,width: 250,
                child: ElevatedButton(onPressed: ()async{
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: '${countrycode.text+phone}',
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {},
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => OTP_Verification ()),
                  // );

                },  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Button color
                  foregroundColor: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // No rounded corners
                  ),
                ),
                    child:Text("SEND CODE")),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
