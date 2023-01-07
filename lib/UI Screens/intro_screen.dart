import 'package:flutter/material.dart';
import 'package:ludotable/UI%20Screens/login_screen.dart';
import 'package:ludotable/UI%20Screens/register_screen.dart';

import '../constants.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightWhite,
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: lightWhite.withOpacity(0.9),
                    ),
                    child: Text(
                      "Ludo ",
                      style: TextStyle(
                        color: black.withOpacity(0.9),
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    padding: EdgeInsets.all(9.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: CobaltBlue,
                    ),
                    child: Text(
                      "Table",
                      style: TextStyle(
                        color: White,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color:  CobaltBlue,
                ),
                child: Text(
                  "Aao Milkar Jeeten",
                  style: TextStyle(
                    color: White,
                      fontStyle: FontStyle.normal,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(child: Image(image: AssetImage('assets/refer.jpg')

        )
        ),
      ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color:  White.withOpacity(0.9),
                ),
                child: Text(
                  "Refer to your friend",
                  style: TextStyle(
                    color: black,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));

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
                  child: Text(
                    "REGISTER NOW ",
                    style: TextStyle(
                      color: White,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Don't have an account?",style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Already a user?",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,

                  ),
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));

                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text("REGISTER NOW",style: TextStyle(
                      color: CobaltBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text("LOGIN NOW",style: TextStyle(
                      color: CobaltBlue,
                      fontSize: 18,
                        fontWeight: FontWeight.w600

                    ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
