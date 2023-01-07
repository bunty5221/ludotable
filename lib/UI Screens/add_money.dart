import 'package:flutter/material.dart';
import 'package:ludotable/UI%20Screens/deposit_method.dart';

import '../constants.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {

 TextEditingController enterAmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40,),

            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);

                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 8),

                    child: Icon(Icons.arrow_back,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Text("Add Money to Your Wallet",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Text("Available Balance ₹ 0.00",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),)),
                ),
              ],
            ),
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: enterAmount,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.currency_rupee,
                  color: Colors.black,),
                  hintText: "Enter Amount",
                  border: OutlineInputBorder(

                  ),

                ),

              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DepositMethod()));
              },
              child: Container(
                height: 50,
                width: 320,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color:  Colors.indigoAccent,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "PROCEED TO ADD MONEY",
                        style: TextStyle(
                          color: White,
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
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
      ),

    );
  }
}
