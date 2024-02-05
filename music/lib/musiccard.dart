import 'package:music/Task-1.dart';
import 'package:flutter/material.dart';
import 'package:music/Explor.dart';

class Musiccard extends StatelessWidget {
  const Musiccard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 300,
    width: 300,
    child: Card(
      color: Colors.lightGreenAccent,
      borderOnForeground: true,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Now Playing',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'poppins'),),
              )],),
          const SizedBox(height: 17,),
          const Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Title',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w600),),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Singer',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600),),)
                ],
              )
            ],
          ),
          const SizedBox(height: 17,),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: LinearProgressIndicator(
                //value: 0.5,
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation(Colors.black),
                minHeight: 7.0,
              ),
            ),
          ),
          const SizedBox(height: 17,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Explor()),
                  );
                },
                icon: const Icon(Icons.arrow_back_outlined,size: 30,),
              ),
              const Icon(Icons.play_circle_outline_outlined,size: 30,),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Explor()),
                  );
                },
                icon: const Icon(Icons.arrow_forward_outlined,size: 30,),
              ),
            ],
          ),
        ],
      ),
    ),
      );
  }
}
