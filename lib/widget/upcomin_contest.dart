import 'package:flutter/material.dart';
import 'package:ludotable/UI%20Screens/contest_details.dart';
import 'package:ludotable/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
class UpcominContest extends StatefulWidget {
  const UpcominContest({Key? key}) : super(key: key);

  @override
  State<UpcominContest> createState() => _UpcominContestState();
}

class _UpcominContestState extends State<UpcominContest> {
   double percent = 0;
   String txt="Join";
   int joinplayer= 2;
   int playercount= 0;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Card(
            elevation: 5,
            shadowColor: DarkCornflowerBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),

            child: SizedBox(
              width: 380,
              height: 100,
              child: Column(
                children: [
                  Row(children: [
                    Container(
                      padding: EdgeInsets.only(left: 5.0,top: 2.0),
                        child: Text("PLAYER 1")),
                    Container(                      padding: EdgeInsets.only(left: 2.0,top: 2.0),

                        child: Text("vs")),
                    Container(
                        padding: EdgeInsets.only(left:2.0,top: 2.0),

                        child: Text("PLAYER 2")),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 5.0,top: 2.0),
                          child: Text("₹18.0",style: TextStyle(
                            fontSize: 17,
                          ),)),

                      Container(
                          padding: EdgeInsets.only(right: 30.0,bottom: 3.0),

                          child: Text("₹10.0",
                          style: TextStyle(
                            fontSize: 17,
                          ),),

                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LinearPercentIndicator(
                        width: 250.0,
                        lineHeight: 14.0,
                        percent: percent,
                        center: Text(
                          "$playercount",
                          style: new TextStyle(fontSize: 12.0),
                        ),
                        barRadius: const Radius.circular(16),
                        backgroundColor: Colors.grey,
                        progressColor: CobaltBlue,
                      ),
                      InkWell(
                        onTap: (){

                          setState(() {

                            if(percent==0.5){
                              percent=1;
                              playercount=2;

                              joinplayer=0;

                            }else if(percent==0){
                              percent= 0.5;
                              txt="Next";
                              playercount=1;
                              joinplayer=1;
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ContestDetails()));
                            }
                             else{
                              percent= 0;
                              txt="Join";
                              playercount=0;
                              joinplayer=2;
                            }

                          });

                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0),

                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Center(child: Text(txt,
                          style: TextStyle(
                            color: Colors.white,

                          ),)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      Container(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text("only $joinplayer player left"),),
                      Container(
                        padding: EdgeInsets.only(right: 5.0),

                        child: Text(" player: $playercount/2"),),

                    ],),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
