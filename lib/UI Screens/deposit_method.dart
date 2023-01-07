import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ludotable/UI%20Screens/more_screen.dart';
import 'package:ludotable/UI%20Screens/upload_image.dart';

import '../constants.dart';

class DepositMethod extends StatefulWidget {
  const DepositMethod({Key? key}) : super(key: key);

  @override
  State<DepositMethod> createState() => _DepositMethodState();
}

class _DepositMethodState extends State<DepositMethod> {
  String upiId = "buntykumar5221@kotak";
  String bankDetails= "ACCOUNT NUMBER : 599404494i4\n IFSC CODE : KKBK0000286";

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
                      "ADD AMOUNT",
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
                        "₹ 100.00",
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
                          child: Container(
                            height: 16,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.indigoAccent)
                            ),
                            child: Center(
                              child: Text(upiId
                              ,
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            onPressed: (){
                              Clipboard.setData(ClipboardData(text: upiId));
                            },
                            icon: Icon(
                              Icons.copy,
                              size: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                          child: Text(
                            " Deposit Amount ₹ 100.00",
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
                          child: Container(
                            height: 25,
                            width: 140,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.indigoAccent)
                            ),
                            child: Center(
                              child: Text(bankDetails
                                ,
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.grey
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            onPressed: (){
                              Clipboard.setData(ClipboardData(text: bankDetails));
                            },
                            icon: Icon(
                              Icons.copy,
                              size: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                          child: Text(
                            " Deposit Amount ₹ 100.00",
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
                          child: Container(
                            height: 16,
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.indigoAccent)
                            ),
                            child: Center(
                              child: Text(upiId
                                ,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            onPressed: (){
                              Clipboard.setData(ClipboardData(text: upiId));
                            },
                            icon: Icon(
                              Icons.copy,
                              size: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                          child: Text(
                            " Deposit Amount ₹ 100.00",
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UploadImage(),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                MoreScreen()));
              },
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
                        "SUBMIT REQUEST",
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

