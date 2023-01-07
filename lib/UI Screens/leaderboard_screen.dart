import 'package:flutter/material.dart';
import 'package:ludotable/constants.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({Key? key}) : super(key: key);

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  double winningAmount = 5000;
  int postion = 1;
  String PlayerName ="rahul dubey";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaderboard", style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600

        ),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined))
        ],


      ),
       body: Column(
         children: [

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,

               children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Postion"),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Player Name"),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Winnig"),
               ),

             ],),
           ),

           Padding(
             padding: const EdgeInsets.all(10.0),
             child: SizedBox(
               height: 60,
               width: 350,
               child: Card(
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("$postion",
                             style: TextStyle(fontSize: 20,
                             fontWeight: FontWeight.w500),
                           ),
                         ),
                         Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 78,top: 4),
                               child: Container(


                                 child: Center(
                                   child: Text("$PlayerName"
                                     ,
                                     style: TextStyle(
                                         fontSize: 18,
                                         color: Colors.black,
                                         fontWeight: FontWeight.w600
                                     ),
                                   ),
                                 ),
                               ),
                             ),

                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 20,top: 8),
                           child: Container(


                             child: Center(
                               child: Text("+₹ $winningAmount"
                                 ,
                                 style: TextStyle(
                                   fontSize: 18,
                                   color: green,
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                     Padding(
                       padding: const EdgeInsets.all(0.0),
                       child: Container(
                           child: Text(
                             "",
                             style: TextStyle(
                               fontSize: 10,
                               color: Colors.grey,
                               fontWeight: FontWeight.w800,
                             ),
                           )),
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
