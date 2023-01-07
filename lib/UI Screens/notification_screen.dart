import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String Message = "play time win every minute";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios),
      ),
      title:Text("Notification",
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
            height: 60,
            width: 350,
            child: Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child:Image.asset('assets/paytm.jpg',
                        height: 30,
                        width: 100,),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(


                              child: Center(
                                child: Text("$Message"
                                  ,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(DateTime.now().toString(),
                          style: TextStyle(fontSize: 8),),

                        ],
                      ),
                    ],
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
