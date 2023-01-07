import 'package:flutter/material.dart';
import 'package:ludotable/UI%20Screens/otp_screen.dart';

import '../constants.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  TextEditingController  phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(

        children: [

          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 40.0,left: 8.0),


                  child: InkWell(
                    onTap: (){

                      Navigator.pop(context);
                    },
                      
                      child: Icon(Icons.arrow_back))),
            ],
          ),
          Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [


                Container(
                  margin: EdgeInsets.only(left: 10.0,top: 50.0),

                  child: Text("Login or Create a New Account",
                    style: TextStyle(
                      fontSize: 16,
                      color: black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ]),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0,top: 10.0),
                child: Text("Enter Mobile Number",
                  style: TextStyle(
                    fontSize: 25,
                    color: black,
                    fontWeight: FontWeight.w500,
                  ),),
              ),
            ],
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextFormField(
                controller: phone,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  fillColor: White,
                  prefixIcon: Icon(Icons.phone_android),
                  label:Text("Mobile Number",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),),
                ),

              ),
            ),
          ),

          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen(mobile: phone.text,)));
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
                      "PROCEED SECURELY",
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
          SizedBox(height: 20,),
          Text("By logging in you agree to the"),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Term & Condition ",style: TextStyle(

                color: CobaltBlue,
              ),),
              Text(" and "),
              Text(" Privacy Policy",style: TextStyle(

                color: CobaltBlue,
              ),),
            ],
          ),

        ],
      ),


    );
  }
}
