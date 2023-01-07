import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
        title:Text("Help",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600

          ),),

      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 380,
            height: 200,
            child: Image.asset('assets/support1.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
         Divider(
          height: 20,
          thickness: 5,
          indent: 0,
          endIndent: 0,
          color: Colors.purpleAccent.withOpacity(0.4),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: SizedBox(
                  height: 120,
                  width: 150,
                  child: Column(children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                              color: Colors.purpleAccent.withOpacity(0.2)
                        ),
                        child: Badge(
                          badgeColor: Colors.white,
                          child: Icon(Icons.messenger,
                            color: Colors.redAccent,
                            size: 40,
                          ),
                          badgeContent: Text("1",style: TextStyle(color: Colors.redAccent),),
                          position: BadgePosition(top: 17),
                        ),
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text("Live Chat",
                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                      ),
                  ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: SizedBox(
                  height: 120,
                  width: 150,
                  child: Column(children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.redAccent.withOpacity(0.2)
                        ),
                        child: Icon(Icons.play_circle,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("How to Use",
                        style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                    ),
                  ],),
                ),
              ),
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: SizedBox(
                  height: 120,
                  width: 150,
                  child: Column(children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.blueAccent.withOpacity(0.2)
                        ),
                        child: Icon(Icons.email_outlined,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("Email US",
                        style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                    ),
                  ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: SizedBox(
                  height: 120,
                  width: 150,
                  child: Column(children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.purpleAccent.withOpacity(0.2)
                        ),
                        child: Icon(Icons.question_answer_outlined,
                          color: Colors.purpleAccent.withOpacity(0.9),
                          size: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("FAQ'S",
                        style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                    ),
                  ],),
                ),
              ),
            ),

          ],
        ),

      ],),
    );
  }
}
