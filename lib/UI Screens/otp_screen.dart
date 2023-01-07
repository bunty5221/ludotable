import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ludotable/UI%20Screens/game_screen.dart';
import '../constants.dart';

class OtpScreen extends StatelessWidget {
  final String mobile;
  const OtpScreen({Key? key, required this.mobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100.0, left: 16.0),
                child: Text(
                  "Verify Mobile Number",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0,left: 10.0),
                child: Text(
                  mobile,
                  style: TextStyle(
                    color: CobaltBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Enter OTP",
                      style: TextStyle(
                        color: black,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
            ],

          ),
          SizedBox(height: 20,),
          Container(
            child: OtpTextField(
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
          ),
          SizedBox(height: 40,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GameScreen()));
            },
            child: Container(
              height: 50,
              width: 320,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color:  CobaltBlue,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.verified,
                        color: Colors.white,),
                    ),
                    Text(
                      "CONFIRM",
                      style: TextStyle(
                        color: White,
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
