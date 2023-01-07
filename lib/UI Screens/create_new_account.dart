import 'package:flutter/material.dart';

import '../constants.dart';
import 'otp_screen.dart';

class CreateNewAccount extends StatelessWidget {
  final String mobile;
  const CreateNewAccount({Key? key,required this.mobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 40.0, left: 8.0),
                      child: Icon(
                        Icons.arrow_back,
                        size: 32,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40.0, left: 10.0),

                  child: Text("Create a New Account",
                      style: TextStyle(
                        fontSize: 24,
                        color: black,
                        fontWeight: FontWeight.w400,
                      ),

                  ),
                )

              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                        initialValue: mobile,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(

                  decoration: InputDecoration(
                    fillColor: White,
                    prefixIcon: Icon(Icons.person),
                    label:Text("Name",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),),
                  ),

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(

                  decoration: InputDecoration(
                    fillColor: White,
                    prefixIcon: Icon(Icons.share),
                    label:Text("Refer Code",style: TextStyle(
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen(mobile: mobile,)));
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

                      Text(
                        "Next",
                        style: TextStyle(
                          color: White,
                          fontStyle: FontStyle.normal,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(Icons.navigate_next_outlined,
                          size: 28,
                          color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
