import 'package:flutter/material.dart';

import '../constants.dart';

class ProceedWithdraw extends StatefulWidget {
  const ProceedWithdraw({Key? key}) : super(key: key);

  @override
  State<ProceedWithdraw> createState() => _ProceedWithdrawState();
}

class _ProceedWithdrawState extends State<ProceedWithdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.arrow_back,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Withdraw Amount",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
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
                  child: Container(
                      child: Text(
                    "₹ 12.00",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 90,
              width: 350,
              child: Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(value: null, groupValue: null, onChanged: null),
                        Image.asset(
                          'assets/upi.jpg',
                          height: 60,
                          width: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Instant Bank Transfer (Bank Charge)",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.info_outlined,
                            size: 14,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                          child: Text(
                        " Total Transfer AMount ₹ 12.00",
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
            SizedBox(
              height: 90,
              width: 350,
              child: Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(value: null, groupValue: null, onChanged: null),
                        Image.asset(
                          'assets/bank.jpg',
                          height: 60,
                          width: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            " Bank Transfer (Free)",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.info_outlined,
                            size: 14,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                          child: Text(
                        " Total Transfer AMount ₹ 12.00",
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
            SizedBox(
              height: 90,
              width: 350,
              child: Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(value: null, groupValue: null, onChanged: null),
                        Image.asset(
                          'assets/paytm.jpg',
                          height: 60,
                          width: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Paytm Wallet",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.info_outlined,
                            size: 14,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                          child: Text(
                        " Total Transfer AMount ₹ 12.00",
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
            SizedBox(
              height: 10,
            ),
            Text(
              "If You TO Change Your Saved Bank Account,\n Write To Support.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.account_balance_wallet,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.headphones,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.verified_user_outlined,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Instant Withdrawle",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "24x7 Help  ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "100% secure",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 320,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.indigoAccent,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "PROCEED TO WITHDRAW",
                        style: TextStyle(
                          color: White,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
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
