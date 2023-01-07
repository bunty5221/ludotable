import 'package:flutter/material.dart';
import 'package:ludotable/constants.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {

  double transactionamount = 100.00;
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
        title:Text("Transaction History",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600

        ),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined))
        ],

      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 80,
              width: 350,
              child: Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Icon(Icons.card_giftcard,
                         size: 28,
                         color: Colors.pinkAccent,
                       ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(


                                child: Center(
                                  child: Text("Welcome Bonus"
                                    ,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(DateTime.now().toString(),
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.grey
                            ),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(


                            child: Center(
                              child: Text("+₹ $transactionamount"
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
