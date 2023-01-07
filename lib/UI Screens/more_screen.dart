import 'package:flutter/material.dart';
import 'package:ludotable/UI%20Screens/add_money.dart';
import 'package:ludotable/UI%20Screens/help_screen.dart';
import 'package:ludotable/UI%20Screens/leaderboard_screen.dart';
import 'package:ludotable/UI%20Screens/refer_reward.dart';
import 'package:ludotable/UI%20Screens/transaction_history.dart';
import 'package:ludotable/UI%20Screens/withdraw_screen.dart';
import 'package:ludotable/constants.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  double TotalBalance = 100.00;
  double depositAmount = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text("My Wallet"),
        actions: [Icon(Icons.info_outlined)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "₹ $TotalBalance",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Text(
                  "Total Balance",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMoney()));
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.indigoAccent,
                    ),
                    child: Center(
                      child: Text(
                        "ADD MONEY",
                        style: TextStyle(
                          fontSize: 16,
                          color: White,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    shadowColor: Colors.indigo,
                    elevation: 5,
                    child: SizedBox(
                      height: 80,
                      width: 150,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.money,
                                  size: 25,
                                  color: Colors.orangeAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "Deposit\n Amount",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "₹ $depositAmount",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.indigo,

                    child: SizedBox(
                      height: 80,
                      width: 150,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.card_giftcard_outlined,
                                  size: 25,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "Winning\n Amount",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "₹ $depositAmount",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    shadowColor: Colors.indigo,
                    elevation: 5,
                    child: SizedBox(
                      height: 80,
                      width: 150,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.share_sharp,
                                  size: 25,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "Refferal\n Amount",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "₹ $depositAmount",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.indigo,

                    child: SizedBox(
                      height: 80,
                      width: 150,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.card_giftcard_outlined,
                                  size: 25,
                                  color: Colors.purpleAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "Bonus\n Amount",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "₹ $depositAmount",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.purpleAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
           Card(
             elevation: 5,
             shadowColor: CobaltBlue,
             child: SizedBox(
               height: 50,
               width: 340,
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(2.0),
                             child: Text("Manage Account"),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(2.0),
                             child: Container(

                                 child: Text("Your Bank Account, Pan & Other Details",
                                   style: TextStyle(
                                     fontSize: 8,
                                     color: Colors.grey,
                                   ),
                                 )),
                           ),
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Container(
                           height: 15,
                             width: 80,
                             decoration: BoxDecoration(
                               border: Border.all(
                                 color: Colors.redAccent,
                               )
                             ),

                             child: Center(
                               child: Text("unverified",
                               style: TextStyle(
                                 fontSize: 8,
                                 color: Colors.redAccent,
                               ),
                               ),
                             ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Container(child: Icon(Icons.arrow_forward_ios_outlined,
                           size: 24,

                         ),

                         ),
                       )
                     ],
                   ),

                 ],
               ),
             ),
           ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              shadowColor: CobaltBlue,
              child: SizedBox(
                height: 50,
                width: 340,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("Transaction History",
                                style: TextStyle(fontWeight: FontWeight.w500),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(


                                  child: Text("All Transaction details",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey,
                                    ),
                                  )),
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TransactionHistory()));
                          },
                            child: Container(child: Icon(Icons.arrow_forward_ios_outlined,
                              size: 24,

                            ),

                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              shadowColor: CobaltBlue,
              child: SizedBox(
                height: 50,
                width: 340,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("Leaderboard",
                                style: TextStyle(fontWeight: FontWeight.w500),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                  child: Text("Winning Prize Leaderboard",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey,
                                    ),
                                  )),
                            ),
                          ],
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaderboardScreen()));

                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(child: Icon(Icons.arrow_forward_ios_outlined,
                              size: 24,

                            ),

                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              shadowColor: CobaltBlue,
              child: SizedBox(
                height: 50,
                width: 340,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(

                              padding: const EdgeInsets.all(4.0),
                              child: Text("Refer Reward",
                              style: TextStyle(fontWeight: FontWeight.w500),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(

                                  child: Text("refer and Earn Money",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey,
                                    ),
                                  )),
                            ),
                          ],
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ReferScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(child: Icon(Icons.arrow_forward_ios_outlined,
                              size: 24,

                            ),

                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              shadowColor: CobaltBlue,
              child: SizedBox(
                height: 50,
                width: 340,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Help",style: TextStyle(fontWeight: FontWeight.w500),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(

                                  child: Text("Contact to Support",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey,
                                    ),
                                  )),
                            ),
                          ],
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpScreen()));


                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(child: Icon(Icons.arrow_forward_ios_outlined,
                              size: 24,

                            ),

                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WithdrawScreen()));          },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.indigoAccent,
                    ),

                    child: Center(child: Text("WITHDRAW",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),

                    ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 30),
              child: Text("Minimum  Withdrawable amount is ₹ 50.00",

              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.grey,

              ),),
            ),
          ],
        ),
      ),
    );
  }
}
