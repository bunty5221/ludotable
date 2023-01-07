
import 'package:flutter/material.dart';
import 'package:ludotable/UI%20Screens/chat.dart';
import 'package:ludotable/UI%20Screens/game_screen.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:timer_count_down/timer_controller.dart';

import '../constants.dart';


class ContestDetails extends StatefulWidget {
  const ContestDetails({Key? key}) : super(key: key);

  @override
  State<ContestDetails> createState() => _ContestDetailsState();
}


class _ContestDetailsState extends State<ContestDetails> {
  final CountdownController _controller =  CountdownController(autoStart: true);
  String player="deep";
  String player2="ashu";
  int winprize = 18;
  String rules = "1. crop screenshot not allowed";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Contest Details", style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600

        ),),
      ),
      body: Column(children: [
        Center(child: Padding(
          padding: const EdgeInsets.only(top: 16,left: 8,right: 8,bottom: 2),
          child: Text("Board close in",style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),),
        )),

    Padding(
      padding: const EdgeInsets.all(4.0),
      child: Countdown(
        controller: _controller,
      seconds: 30,

      build: (BuildContext context, double time) => Text(time.toString(),
      style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.w600,
        fontSize: 18,),),
      interval: Duration(seconds: 1),
        onFinished: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>GameScreen()));
        },

      ),
    ),
        SizedBox(height: 20,),

        Container(
          height: 30,
          width: 320,
          decoration: BoxDecoration(color: Colors.blueAccent),
          child: Center(child: Text("Table & Opponent Details",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),)),
        ),
        Card(
          child: SizedBox(
            height: 140,
            width: 320,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("$player"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("VS"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("$player2"),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(


                      child: Icon(Icons.account_balance_outlined,
                        color: Colors.redAccent,


                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      child: Text("Win",
                        style: TextStyle(color: Colors.grey,
                            fontSize: 12),),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 180),
                      child: Text("$winprize",style: TextStyle(color: Colors.indigoAccent),),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(Icons.confirmation_number_outlined,
                      color: Colors.pinkAccent,),
                    ),
                    SizedBox(width: 20,),
                    Container(child: Text("Board Number",
                    style: TextStyle(color: Colors.grey,
                    fontSize: 12),)
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 120),
                      child: Text("#99",
                        style: TextStyle(color: Colors.indigoAccent
                            ,fontSize: 14),),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(Icons.whatsapp,
                      color: Colors.greenAccent,),
                    ),
                    SizedBox(width: 10,),
                    Container(child: Text("Contact opponent & share\nRoom Code",
                    style:TextStyle(fontSize: 10,
                    color: Colors.grey),)),
                    Container(
                      margin: EdgeInsets.only(left: 80),

                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));

                          },
                            child: Text("click Here",
                            style: TextStyle(color: Colors.indigoAccent
                            ,fontSize: 14),))),
                  ],
                ),


              ],
            ),
          ),

        ),
        SizedBox(height: 20,),
        Text("Please, Dont' press  back until waiting time over\n or opponent join match",style: TextStyle(
          color: Colors.pinkAccent,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text("Rules & Policy",style: TextStyle(
              color: Colors.indigoAccent,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),),

          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(rules,style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: green,
              ),),
            ),
          ],
        ),
      ],
      ),
    );
  }
}
